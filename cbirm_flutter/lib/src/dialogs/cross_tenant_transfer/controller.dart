import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';
import 'package:meilisearch/meilisearch.dart';

import 'form.dart';

class CrossTenantTransferFormParameters {
  final String? initialDocumentId;
  final String libraryId;
  const CrossTenantTransferFormParameters({
    this.initialDocumentId,
    required this.libraryId,
  });
}

@injectable
class CrossTenantTransferController extends BdayaCombinedController
    with MeiliBooksSearch {
  final CrossTenantTransferFormParameters parameters;
  @override
  final ApiService apiService;
  @override
  final MeiliSearchService meiliSearchService;
  CrossTenantTransferController(
    @factoryParam this.parameters,
    this.apiService,
    this.meiliSearchService,
  );

  late final initialModelRx = SharedValue<CrossTenantTransferModel?>(
    value: null,
  );
  final formRx = SharedValue<CrossTenantTransferModelForm?>(value: null);

  @override
  void beforeRender(BuildContext context) {
    super.beforeRender(context);
    registerStream(
      Stream.value(parameters.initialDocumentId).switchMap((value) {
        if (value == null) {
          return Stream.value(null);
        }
        return apiService.api
            .getDocumentsApi()
            .apiAppDocumentsIdMeiliMappedDocumentGet(id: value)
            .asStream()
            .map((event) => event.data)
            .wrapWithArea(defaultArea, logger);
      }).listen((event) {
        initialModelRx.$ = CrossTenantTransferModel(document: event);
      }),
    );
  }

  Future<Iterable<ResultContainer<BdayaBLCIRMTenantsAppTenantDto>>>
      fetchTenantsPage(String searchText) async {
    try {
      final index = meiliSearchService.tenants;
      if (index == null) {
        return [];
      }

      final res = await index
          .search(
            searchText,
            offset: 0,
            limit: 50,
            attributesToHighlight: ["Name"],
            filterExpression:
                "AllowedBy.Result".toMeiliAttribute().eq(true.toMeiliValue()),
          )
          .asSearchResult()
          .map(
            (src) => ResultContainer(
              original: src,
              object: standardSerializers.deserializeWith(
                BdayaBLCIRMTenantsAppTenantDto.serializer,
                src,
              )!,
            ),
          );
      return res.hits;
    } catch (e, st) {
      logger.severe("Error when fetching tenants", e, st);
      rethrow;
    }
  }

  Future<void> submit(
    BuildContext context, {
    required CrossTenantTransferModelForm form,
  }) async {
    final model = form.model;

    try {
      startLoading();
      final response = await apiService.api
          .getDocumentsApi()
          .apiAppDocumentsIdTransferDocumentPost(
            id: model.document!.id!,
            bdayaBLCIRMStateTransferDocumentDto:
                BdayaBLCIRMStateTransferDocumentDto(
              (b) => b
                ..notes = model.notes
                ..pricePerItem = model.pricePerItem?.toDouble()
                ..quantity = model.count
                ..targetTenantId = model.tenant?.id,
            ),
          )
          .then((value) => value.data);
      stopLoadingSuccess();
      final info = response?.info;
      if (info is! BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto) {
        logger.warning(
            "Cross Tenant Transfer transaction info is not of proper type: $info");
        return;
      }
      if (
          // ignore: use_build_context_synchronously
          !context.mounted) {
        // ignore: use_build_context_synchronously
        Navigator.pop(context, null);
        return;
      }

      stopLoadingSuccess();
      if (context.mounted) {
        // ignore: use_build_context_synchronously
        Navigator.pop<BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto>(
            context, info);
      }
    } catch (e, st) {
      stopLoadingError(
        e,
        st,
        logger,
        "An error occured trying to transfer the documents",
      );
      await showOkAlertDialog(
        context: context,
        message: "An error occured trying to create the author",
      );
    }
  }

  void reset(
    BuildContext context, {
    required CrossTenantTransferModelForm form,
  }) {
    initialModelRx.update((p0) => p0?.copyWith());
  }
}
