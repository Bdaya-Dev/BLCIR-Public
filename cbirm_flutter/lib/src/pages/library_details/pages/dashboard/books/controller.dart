import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';
import 'package:go_router/go_router.dart';
import 'package:meilisearch/meilisearch.dart';

import '../_shell/controller.dart';

@lazySingleton
class DashboardBooksController extends BdayaCombinedController
    with MeiliBooksSearch {
  final DashboardShellController shellController;
  @override
  final ApiService apiService;
  @override
  final MeiliSearchService meiliSearchService;
  late final libraryIdRx = shellController.libraryIdRx;

  DashboardBooksController(
    this.shellController,
    this.apiService,
    this.meiliSearchService,
  );

  late final relatedArea = withLoadableArea(name: 'Related Books');
  final bookRegisterationStatsuFilterRx = SharedValue<bool?>(value: true);
  // final containedBooks = SharedValue(
  //   value: <BdayaBLCIRMStateAppTenantDocumentEntryDtoForTenants>[],
  // );

  Future<void> startLoanProcess(
    BuildContext context,
    BdayaBLCIRMStateMeiliDocumentDto document,
    BdayaBLCIRMStateCompcatTenantEntryDto entry,
  ) async {
    final result = await CreateLoanView.showModal(
      context,
      params: CreateLoanParams(
        document: document,
        person: null,
        libraryId: entry.tenantId!,
      ),
    );
    if (result != null) {
      paginationController.refresh();
    }
  }



  void startAddProcess(BuildContext context) {
    context.goNamed(AppRouteNames.kDashboardNewBook, pathParameters: {
      kLibraryId: libraryIdRx.$!,
    });
  }

  @override
  MeiliOperatorExpressionBase? modifyFilterExpression(
    MeiliOrOperatorExpression? orFilter,
  ) {
    //include library Id
    final bookRegisterationStatsuFilter = bookRegisterationStatsuFilterRx.$;
    final libraryId = libraryIdRx.$;
    //bookRegisterationStatsuFilter
    final attr = 'Entries.TenantId'.toMeiliAttribute();
    final libIdVal = libraryId?.toMeiliValue();
    return Meili.and([
      if (libIdVal != null && bookRegisterationStatsuFilter != null)
        if (bookRegisterationStatsuFilter)
          attr.eq(libIdVal)
        else
          attr.notEq(libIdVal),
      if (orFilter != null) orFilter
    ]);
  }

  @override
  void beforeRender(BuildContext context) {
    super.beforeRender(context);
    registerStream(bookRegisterationStatsuFilterRx.stream.listen((event) {
      paginationController.refresh();
    }));
  }

  Future<int?> getInitialCountInput(BuildContext context) async {
    final rawRes = await showTextInputDialog(
      context: context,
      textFields: [
        DialogTextField(
          keyboardType: TextInputType.number,
          initialText: '',
          autocorrect: false,
          validator: (value) => value == null
              ? 'Please input initial count'
              : int.tryParse(value) == null
                  ? "Please enter a valid number"
                  : null,
        ),
      ],
      title: "Initial count",
      message:
          'A non-negative integer to represent the initial count of documents owned by this library (not including loaned)',
    );
    if (rawRes == null || rawRes.isEmpty) {
      return null;
    }
    return int.tryParse(rawRes.first);
  }

  Future<void> startRegisterResourceFlow(
    BuildContext context, {
    required String documentId,
    int? initialCount,
  }) async {
    //
    final res = initialCount ?? await getInitialCountInput(context);
    if (res == null) {
      return;
    }
    try {
      final _ = await apiService.api
          .getDocumentsApi()
          .apiAppDocumentsRegisterDocumentEntryForTenantPost(
            bdayaBLCIRMRegisterDocumentTransactionInfoDto:
                (BdayaBLCIRMRegisterDocumentTransactionInfoDtoBuilder()
                      ..documentId = documentId
                      ..initialCount = res)
                    .build(),
          )
          .wrapWithArea(
            relatedArea,
            logger,
            "Failed to register document entry",
          );
      paginationController.refresh();
    } catch (e) {
      //
    }
  }
}
