import 'dart:async';

import 'package:blcirm_api/blcirm_api.dart';
import 'package:dio/dio.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:meilisearch/meilisearch.dart';

import 'package:cbirm_flutter/common.dart';
import '../books/controller.dart';

import '../_shell/controller.dart';

@lazySingleton
class DashboardBookDetailsController extends BdayaCombinedRouteController {
  final DashboardShellController shellController;
  final ApiService apiService;
  final MeiliSearchService meiliSearchService;
  final DashboardBooksController booksController;
  DashboardBookDetailsController(
    this.shellController,
    this.apiService,
    this.meiliSearchService,
    this.booksController,
  );
  late final relatedArea = withLoadableArea(name: 'Related');
  late final tenantId = shellController.libraryDetailsController.libraryIdRx;
  late final tenantDetails =
      shellController.libraryDetailsController.libraryDetailsRx;

  final bookIdRx = SharedValue<String?>(value: null);

  final bookDetails = SharedValue<BdayaBLCIRMStateDocumentDto?>(value: null);

  final relatedEntry =
      SharedValue<BdayaBLCIRMStateAppTenantDocumentEntryDtoForTenants?>(
    value: null,
  );

  final filterStreamController = BehaviorSubject<String>();
  final filterController = TextEditingController();
  final loansController = PagingController<int,
      ResultContainer<BdayaBLCIRMStateFullLoanDetailsDto>>(
    firstPageKey: 0,
  );

  Future<void> fetchLoansPage(int pageKey) async {
    try {
      final index = meiliSearchService.loans;
      final libraryId = shellController.libraryIdRx.$;
      final bookId = bookIdRx.$;
      if (index == null || libraryId == null || bookId == null) {
        return;
      }
      final res = await index
          .search(
            filterStreamController.valueOrNull,
            offset: pageKey,
            limit: 20,
            filterExpression: Meili.and([
              'Tenant.Id'.toMeiliAttribute().eq(libraryId.toMeiliValue()),
              'Document.Id'.toMeiliAttribute().eq(bookId.toMeiliValue()),
              'RemainingCopies'.toMeiliAttribute().gt(0.toMeiliValue()),
            ]),
            attributesToHighlight: [
              'Person.Info.Name',
            ],
          )
          .asSearchResult()
          .map((e) {
            final obj = standardSerializers.deserializeWith(
              BdayaBLCIRMStateFullLoanDetailsDto.serializer,
              e,
            );

            return obj == null
                ? null
                : ResultContainer(
                    original: e,
                    object: obj,
                  );
          });

      final merged = res.hits.whereNotNull().toList();
      final isLastPage = merged.length < res.limit!;
      if (isLastPage) {
        loansController.appendLastPage(merged);
      } else {
        loansController.appendPage(merged, pageKey + res.limit!);
      }
    } on MeiliSearchApiException catch (e) {
      loansController.error = e.message;
    } on DioError catch (e) {
      loansController.error = e.message;
    } catch (e) {
      loansController.error = e;
    }
  }

  Future<void> startCreateLoanFlow(
    BuildContext context, {
    required BdayaBLCIRMStateAppTenantDocumentEntryDtoForTenants entry,
  }) async {
    final builder = BdayaBLCIRMStateMeiliDocumentDtoBuilder()
      ..info = entry.document?.info?.toBuilder();
    final result = await CreateLoanView.showModal(
      context,
      params: CreateLoanParams(
        document: builder.build(),
        person: null,
        libraryId: tenantId.$!,
      ),
    );
    if (result != null) {
      loansController.refresh();
    }
  }

  Future<void> startTransferFlow(
    BuildContext context, {
    required BdayaBLCIRMStateAppTenantDocumentEntryDtoForTenants entry,
  }) async {
    final result = await CrossTenantTransferView.showModal(
      context,
      params: CrossTenantTransferFormParameters(
        libraryId: shellController.libraryIdRx.$!,
        initialDocumentId: entry.document?.id,
      ),
    );
    if (result != null) {
      loansController.refresh();
    }
  }

  Future<void> startOwnEntryUpdateFlow(
    BuildContext context, {
    required BdayaBLCIRMStateAppTenantDocumentEntryDtoForTenants entry,
  }) async {
    final result = await shellController.startUpdateOwnedCountFlow(
      context,
      area: defaultArea,
      documentId: bookIdRx.$!,
      currentCount: entry.availableQuantity,
    );
    if (result) {
      bookIdRx.update((p0) => p0);
    }
  }

  @override
  void beforeRender(BuildContext context) {
    super.beforeRender(context);
    registerStream(bookIdRx.streamWithInitial.switchMap((bookId) {
      if (bookId == null) {
        return Stream.value(null);
      }
      return apiService.api
          .getDocumentsApi()
          .apiAppDocumentsIdGet(id: bookId)
          .asStream()
          .wrapWithArea(defaultArea, logger)
          .map((event) => event.data);
    }).listen(
      (event) {
        bookDetails.$ = event;
      },
      onError: (_) => bookDetails.$ = null,
    ));
    //related entry
    registerStream(Rx.combineLatest2(
      bookIdRx.streamWithInitial,
      tenantId.streamWithInitial,
      (a, b) => Tuple2(a, b),
    ).switchMap((tuple) {
      final bookId = tuple.item1;
      final tenantId = tuple.item2;
      if (bookId == null || tenantId == null) {
        return Stream.value(null);
      }
      return apiService.api
          .getDocumentsApi()
          .apiAppDocumentsSingleRelatedEntryForTenantGet(
            documentId: bookId,
            tenantId: tenantId,
          )
          .asStream()
          .map((event) => event.data)
          .wrapWithArea(defaultArea);
    }).listen((event) {
      relatedEntry.$ = event;
    }));
    //
    registerListenable(filterController, () {
      final oldText = filterStreamController.valueOrNull;
      final newText = filterController.text;
      if (newText == oldText) {
        return;
      }
      filterStreamController.add(newText);
    });

    registerStream(filterStreamController.stream.listen((event) {
      loansController.refresh();
    }));

    loansController.addPageRequestListener(fetchLoansPage);
    registerDisposableAction(
      () => loansController.removePageRequestListener(fetchLoansPage),
    );
  }

  @override
  void onRouteInformationChanged(GoRouterRouteMatch route) {
    bookIdRx.$ = route.pathParameters[kBookId];
  }

  Future<void> startRegisterForSelfFlow(BuildContext context) async {
    final initialCount = await booksController.getInitialCountInput(context);

    if (context.mounted) {
      try {
        await booksController
            .startRegisterResourceFlow(
              context,
              documentId: bookIdRx.$!,
              initialCount: initialCount,
            )
            .wrapWithArea(defaultArea);
        bookIdRx.update((p0) => p0);
      } catch (e) {
        //
      }
    }
  }

  Future<void> startUpdateProcess(BuildContext context) async {
    final res = await shellController.startUpdateMetadataFlow(
      context,
      area: defaultArea,
      documentId: bookIdRx.$!,
    );
    if (res) {
      bookIdRx.update((p0) => p0);
    }
  }

  Future<void> startDeleteProcess(BuildContext context) async {
    final res = await shellController.startDeleteDocumentFlow(
      context,
      documentId: bookIdRx.$!,
    );
    if (res) {
      bookIdRx.update((p0) => p0);
    }
  }
}
