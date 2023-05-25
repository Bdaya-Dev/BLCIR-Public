import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';
import 'package:cbirm_flutter/src/dialogs/edit_document_metadata/controller.dart';

import 'package:cbirm_flutter/src/pages/library_details/controller.dart';

@lazySingleton
class DashboardShellController extends BdayaCombinedRouteController {
  final AuthService authService;
  final LibraryDetailsController libraryDetailsController;
  final GoRouterService goRouterService;
  final ApiService apiService;
  SharedValue<String?> get libraryIdRx => libraryDetailsController.libraryIdRx;

  DashboardShellController(
    this.authService,
    this.libraryDetailsController,
    this.goRouterService,
    this.apiService,
  );
  final selectedIndex = SharedValue(value: 0);

  Map<String, String> params({BuildContext? context, String? libraryId}) {
    final id = libraryId ?? libraryDetailsController.libraryIdRx.of(context);
    return {
      if (id != null) kLibraryId: id,
    };
  }

  List<NavigationTarget> targets({BuildContext? context, String? libraryId}) {
    final params = this.params(context: context, libraryId: libraryId);
    if (params.isEmpty) {
      return const [];
    }
    return [
      NavigationTarget(
        destination: const NavigationDestination(
          icon: Icon(Icons.dashboard),
          label: "My Library",
        ),
        route: goRouterService
            .namedLocation(
              AppRouteNames.kLibraryDashboard,
              pathParameters: params,
            )
            .toString(),
      ),
      NavigationTarget(
        destination: const NavigationDestination(
          icon: Icon(Icons.ballot),
          label: "Voting",
        ),
        route: goRouterService
            .namedLocation(
              AppRouteNames.kDashboardVoting,
              pathParameters: params,
            )
            .toString(),
      ),
      NavigationTarget(
        destination: const NavigationDestination(
          icon: Icon(Icons.menu_book),
          label: "Owned Resources",
        ),
        route: goRouterService
            .namedLocation(
              AppRouteNames.kDashboardBooks,
              pathParameters: params,
            )
            .toString(),
      ),
      NavigationTarget(
        destination: const NavigationDestination(
          icon: Icon(Icons.credit_score),
          label: "Resource Loans",
        ),
        route: goRouterService
            .namedLocation(
              AppRouteNames.kDashboardLoans,
              pathParameters: params,
            )
            .toString(),
      ),
      NavigationTarget(
        destination: const NavigationDestination(
          icon: Icon(Icons.person),
          label: "People",
        ),
        route: goRouterService
            .namedLocation(
              AppRouteNames.kDashboardPeople,
              pathParameters: params,
            )
            .toString(),
      ),
      NavigationTarget(
        destination: const NavigationDestination(
          icon: Icon(Icons.group),
          label: "Members",
        ),
        route: goRouterService
            .namedLocation(
              AppRouteNames.kDashboardMembers,
              pathParameters: params,
            )
            .toString(),
      ),
      // NavigationTarget(
      //   destination: const NavigationDestination(
      //     icon: Icon(Icons.settings),
      //     label: "Settings",
      //   ),
      //   route: goRouterService
      //       .namedLocation(
      //         AppRouteNames.kDashboardSettings,
      //         params: params,
      //       )
      //       .toString(),
      // ),
    ];
  }

  Future<bool> startTransferToOtherFlow(
    BuildContext context, {
    required BdayaRxLoadableArea area,
    required String documentId,
    Logger? logger,
  }) async {
    final res = await CrossTenantTransferView.showModal(
      context,
      params: CrossTenantTransferFormParameters(
        libraryId: libraryIdRx.$!,
        initialDocumentId: documentId,
      ),
    );
    return res != null;
  }

  Future<bool> startUpdateOwnedCountFlow(
    BuildContext context, {
    required BdayaRxLoadableArea area,
    required String documentId,
    required int? currentCount,
    Logger? logger,
  }) async {
    final inputResultRaw = await showTextInputDialog(
      context: context,
      title: "Update available count",
      message: "Please input the new available count",
      textFields: [
        DialogTextField(
          hintText: 'Amount ...',
          initialText: currentCount?.toString(),
          keyboardType: TextInputType.number,
          validator: (value) {
            final parsed = value == null ? null : int.tryParse(value);
            if (parsed == null || parsed <= 0) {
              return "Amount must be a valid positive integer";
            }
            return null;
          },
        ),
      ],
    );
    if (inputResultRaw == null) {
      return false;
    }
    final [amountStr] = inputResultRaw;
    final amount = int.parse(amountStr);
    try {
      final _ = await apiService.api
          .getDocumentsApi()
          .apiAppDocumentsOwnEntryDocumentIdPut(
            documentId: documentId,
            bdayaBLCIRMStateUpdateOwnEntryRequestDto:
                BdayaBLCIRMStateUpdateOwnEntryRequestDto(
              (b) => b..newAvailableCount = amount,
            ),
          )
          .then((value) => value.data)
          .wrapWithArea(area, logger);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> startDeleteDocumentFlow(
    BuildContext context, {
    required String documentId,
  }) async {
    final result = await showOkCancelAlertDialog(
      context: context,
      message: 'Are you sure you want to delete the document ?',
    );
    if (result == OkCancelResult.ok) {
      final transaction = await apiService.api
          .getDocumentsApi()
          .apiAppDocumentsIdDelete(
            id: documentId,
          )
          .then((value) => value.data);
      final info = transaction?.info;
      return info is BdayaBLCIRMDeleteDocumentTransactionInfoDto;
    }
    return false;
  }

  Future<bool> startUpdateMetadataFlow(
    BuildContext context, {
    required BdayaRxLoadableArea area,
    required String documentId,
    Logger? logger,
  }) async {
    final res = await EditDocumentMetadataView.showModal(
      context,
      params: EditDocumentMetadataFormParameters(
        libraryId: libraryIdRx.$!,
        originalDocumentId: documentId,
      ),
    );
    return res == true;
  }

  Future<bool> startReturnLoanFlow(
    BuildContext context, {
    required BdayaRxLoadableArea area,
    required BdayaBLCIRMStateFullLoanDetailsDto entry,
    Logger? logger,
  }) async {
    //
    final copies = entry.remainingCopies ?? 0;
    if (copies <= 0) {
      return false;
    }
    int toReturn = copies;
    if (copies > 1) {
      final inputResultRaw = await showTextInputDialog(
        context: context,
        title: "Return a loan",
        message: "Please input the specific amount to return",
        textFields: [
          DialogTextField(
            hintText: 'Amount ...',
            initialText: copies.toString(),
            keyboardType: TextInputType.number,
            validator: (value) {
              final parsed = value == null ? null : int.tryParse(value);
              if (parsed == null || parsed <= 0) {
                return "Amount must be a valid positive integer";
              }
              if (parsed > copies) {
                return "Returned amount must be at most $copies";
              }
              return null;
            },
          ),
        ],
      );
      if (inputResultRaw == null) {
        return false;
      }
      final [amountStr] = inputResultRaw;
      toReturn = int.parse(amountStr);
    } else {
      final result = await showOkCancelAlertDialog(
        context: context,
        message: 'Confirm returning the loan',
      );
      if (result == OkCancelResult.cancel) {
        return false;
      }
    }
    if (toReturn <= 0) {
      return false;
    }
    final b = BdayaBLCIRMStateReturnLoanDtoBuilder()
      ..physicalCopies = toReturn
      ..returnDate = DateTime.now().toUtc();
    try {
      final _ = await apiService.api
          .getLoansApi()
          .apiAppLoansReturnLoanLoanIdPost(
            loanId: entry.id!,
            bdayaBLCIRMStateReturnLoanDto: b.build(),
          )
          .then((value) => value.data)
          .wrapWithArea(area, logger);
      return true;
    } catch (e) {
      return false;
    }
  }

  late final currentRoute =
      SharedValue<Uri>(value: Uri.parse(goRouter.location));

  @override
  void onRouteInformationChanged(GoRouterRouteMatch route) {
    currentRoute.$ = route.uri;
  }

  @override
  void beforeRender(BuildContext context) {
    super.beforeRender(context);

    registerStream(
      Rx.combineLatest2(
        libraryDetailsController.libraryIdRx.streamWithInitial,
        currentRoute.streamWithInitial,
        (libraryId, value) {
          final path = value.path;
          final targets = this.targets(libraryId: libraryId);
          final res = targets.indexWhere((element) => element.route == path);
          if (res < 0) {
            return targets
                .toList()
                .lastIndexWhere((element) => path.startsWith(element.route));
          } else {
            return res;
          }
        },
      ).listen((event) {
        selectedIndex.$ = event;
      }),
    );
  }
}
