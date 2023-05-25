import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cbirm_flutter/common.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:blcirm_api/blcirm_api.dart';
import 'package:meilisearch/meilisearch.dart';
import '../_shell/controller.dart';

class ProposalContainer {
  final BdayaBLCIRMStateTransactionProposalDto item;
  final BdayaBLCIRMTenantsAppTenantDto? tenant;

  const ProposalContainer({
    required this.item,
    required this.tenant,
  });
}

@lazySingleton
class DashboardVotingController extends BdayaCombinedController {
  final DashboardShellController shellController;
  final ApiService apiService;
  final MeiliSearchService meiliSearchService;

  DashboardVotingController(
    this.shellController,
    this.apiService,
    this.meiliSearchService,
  );

  final tenantSearchController = TextEditingController();
  final tenantSearchControllerRx = SharedValue(value: '');
  final transactionVotesPaginationController =
      PagingController<int, ProposalContainer>(
    firstPageKey: 0,
  );
  final tenantVotesPaginationController =
      PagingController<int, ResultContainer<BdayaBLCIRMTenantsAppTenantDto>>(
    firstPageKey: 0,
  );

  late final actionArea = withLoadableArea(name: "Vote Action");

  Future<void> fetchTransactionsPage(int skip) async {
    try {
      const limit = 20;
      final res = await apiService.api
          .getVotingApi()
          .apiAppVotingPendingTransactionsGet(
            skipCount: skip,
            maxResultCount: limit,
          );
      final allTenantIds =
          res.data?.items?.map((p0) => p0.tenantId).whereNotNull().toSet() ??
              {};
      final allRelatedTenants = await apiService.api
          .getAppTenantApi()
          .apiAppAppTenantTenantsByIdsGet(ids: allTenantIds.toBuiltSet())
          .then(
            (value) =>
                value.data?.toMap() ??
                <String, BdayaBLCIRMTenantsAppTenantDto>{},
          );

      final total = res.data?.totalCount ?? 0;
      final data = (res.data?.items?.toList() ?? []).map((e) {
        final tenantId = e.tenantId;
        final tenant = tenantId == null ? null : allRelatedTenants[tenantId];
        return ProposalContainer(item: e, tenant: tenant);
      }).toList();
      final isLast = skip + limit > total;
      if (isLast) {
        transactionVotesPaginationController.appendLastPage(data);
      } else {
        transactionVotesPaginationController.appendPage(data, skip + limit);
      }
    } catch (e, st) {
      transactionVotesPaginationController.error = e;
      logger.severe("Error fetching proposals", e, st);
    }
  }

  Future<void> fetchUnverifiedTenantsPage(int skip) async {
    try {
      const limit = 20;
      final index = meiliSearchService.tenants;
      if (index == null) {
        return;
      }

      final rawRes = await index
          .search(
            tenantSearchControllerRx.$,
            offset: skip,
            limit: limit,
            attributesToHighlight: ["Name"],
            filterExpression: Meili.and([
              //TODO: maybe add country check here
              'AllowedBy.Result'.toMeiliAttribute().notExists(),
            ]),
          )
          .then((value) => value.asSearchResult());
      final hitsMapped = rawRes.hits
          .map(
            (e) {
              final obj = standardSerializers.deserializeWith(
                BdayaBLCIRMTenantsAppTenantDto.serializer,
                e,
              );
              return obj == null
                  ? null
                  : ResultContainer(
                      original: e,
                      object: obj,
                    );
            },
          )
          .whereNotNull()
          .toList();

      final searchRes = rawRes.asSearchResult();
      final isLastPage = hitsMapped.length < (searchRes.limit ?? limit);

      if (isLastPage) {
        tenantVotesPaginationController.appendLastPage(hitsMapped);
      } else {
        final nextPageKey = searchRes.offset! + searchRes.limit!;
        tenantVotesPaginationController.appendPage(hitsMapped, nextPageKey);
      }
    } catch (e, st) {
      tenantVotesPaginationController.error = e;
      logger.severe("Error fetching tenants", e, st);
    }
  }

  @override
  void beforeRender(BuildContext context) {
    super.beforeRender(context);
    transactionVotesPaginationController
        .addPageRequestListener(fetchTransactionsPage);
    registerDisposableAction(
      () => transactionVotesPaginationController
          .removePageRequestListener(fetchTransactionsPage),
    );

    tenantVotesPaginationController
        .addPageRequestListener(fetchUnverifiedTenantsPage);
    registerDisposableAction(
      () => tenantVotesPaginationController
          .removePageRequestListener(fetchUnverifiedTenantsPage),
    );

    registerListenable(tenantSearchController, () {
      tenantSearchControllerRx.$ = tenantSearchController.text;
    });
    registerStream(tenantSearchControllerRx.stream.distinct().listen((event) {
      tenantVotesPaginationController.refresh();
    }));
  }

  Future<void> voteAction(
    BuildContext context, {
    required BdayaBLCIRMStateTransactionProposalDto proposal,
    required bool result,
  }) async {
    //show dialog
    final reason = await showTextInputDialog(
      context: context,
      textFields: [
        const DialogTextField(hintText: 'Notes'),
      ],
      message:
          "Are you sure you want to ${result ? 'Accept' : 'Deny'} this action ?",
    ).then((value) => value?.firstOrNull);
    if (reason == null) {
      return;
    }
    try {
      final b = BdayaBLCIRMStateVoteForTransactionProposalDtoBuilder()
        ..notes = reason
        ..result = result;
      await apiService.api
          .getVotingApi()
          .apiAppVotingIdPut(
            id: proposal.id!,
            bdayaBLCIRMStateVoteForTransactionProposalDto: b.build(),
          )
          .wrapWithArea(
            actionArea,
            logger,
            "An error occured while voting for a transaction",
          );
      transactionVotesPaginationController.refresh();
    } catch (e) {
      //
    }
  }

  Future<void> voteTenant(
    BuildContext context, {
    required BdayaBLCIRMTenantsAppTenantDto tenant,
    required bool result,
  }) async {
    //show dialog
    final reason = await showTextInputDialog(
      context: context,
      textFields: [
        const DialogTextField(hintText: 'Notes'),
      ],
      message:
          "Are you sure you want to ${result ? 'Accept' : 'Deny'} ${tenant.name} ?",
    ).then((value) => value?.firstOrNull);

    if (reason == null) {
      return;
    }

    try {
      final b = BdayaBLCIRMApproveTenantDtoBuilder()
        ..tenantId = tenant.id
        ..result = result
        ..reason = reason;
      await apiService.api
          .getAppTenantApi()
          .apiAppAppTenantApproveTenantPost(
            bdayaBLCIRMApproveTenantDto: b.build(),
          )
          .wrapWithArea(
            actionArea,
            logger,
            "An error occured while voting for a tenant",
          );
      tenantVotesPaginationController.refresh();
    } catch (e) {
      //
    }
  }
}
