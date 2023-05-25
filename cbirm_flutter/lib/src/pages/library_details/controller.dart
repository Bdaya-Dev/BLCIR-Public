import 'package:blcirm_api/blcirm_api.dart';

import 'package:cbirm_flutter/common.dart';
import 'package:meilisearch/meilisearch.dart';

@lazySingleton
class LibraryDetailsController extends BdayaCombinedRouteController
    with MeiliBooksSearch {
  final libraryIdRx = SharedValue<String?>(value: null);
  final libraryDetailsRx = SharedValue<BdayaBLCIRMTenantsAppTenantDto?>(
    value: null,
  );

  final focusBookIdRx = SharedValue<String?>(value: null);
  final focusBookDetailsRx =
      SharedValue<BdayaBLCIRMStateMeiliDocumentDto?>(value: null);

  final verifiedByTenantRx =
      SharedValue<BdayaBLCIRMTenantsAppTenantDto?>(value: null);

  late final loginArea = withLoadableArea(name: 'Auth');
  late final relatedArea = withLoadableArea(name: 'Related documents');
  late final verificationArea = withLoadableArea(name: 'Verification');
  @override
  void manualRefresh() {
    // super.manualRefresh();
    focusBookIdRx.update((p0) => p0);
  }

  @override
  MeiliOperatorExpressionBase? modifyFilterExpression(
    MeiliOrOperatorExpression? orFilter,
  ) {
    //exclude this from filter
    final focusBookId = focusBookIdRx.$;
    //include library Id
    final libraryId = libraryIdRx.$;
    return Meili.and([
      if (focusBookId != null)
        'Id'.toMeiliAttribute().notEq(focusBookId.toMeiliValue()),
      if (libraryId != null)
        'Entries.TenantId'.toMeiliAttribute().eq(libraryId.toMeiliValue()),
      if (orFilter != null) orFilter
    ]);
  }

  @override
  final ApiService apiService;
  final AuthService authService;
  @override
  final MeiliSearchService meiliSearchService;

  LibraryDetailsController(
    this.apiService,
    this.authService,
    this.meiliSearchService,
  );

  @override
  void onRouteInformationChanged(GoRouterRouteMatch route) {
    //
    libraryIdRx.$ = route.pathParameters[kLibraryId];
    focusBookIdRx.$ = route.uri.queryParameters[kBookId];
  }

  Future<void> login(BuildContext context, {required String libraryId}) async {
    try {
      loginArea.startLoading();
      await authService.login(context: context, tenantId: libraryId);
      loginArea.stopLoadingSuccess();
    } catch (e, st) {
      loginArea.stopLoadingError(
        e,
        st,
        logger,
        "Error occured while logging in",
      );
    }
  }

  @override
  void beforeRender(BuildContext context) {
    super.beforeRender(context);
    //details from Id
    registerStream(
      libraryIdRx.streamWithInitial.switchMap((value) {
        if (value == null) {
          return Stream.value(null);
        }
        return apiService.api
            .getAppTenantApi()
            .apiAppAppTenantIdGet(id: value)
            .asStream()
            .map((event) => event.data)
            .wrapWithArea(defaultArea);
      }).listen((event) {
        libraryDetailsRx.$ = event;
      }),
    );
    //verified By
    registerStream(libraryDetailsRx.streamWithInitial.switchMap((value) {
      final byTenantId = value?.allowedBy?.tenantId;
      if (byTenantId == null) {
        return Stream.value(null);
      }
      return apiService.api
          .getAppTenantApi()
          .apiAppAppTenantIdGet(id: byTenantId)
          .asStream()
          .map((event) => event.data)
          .wrapWithArea(verificationArea);
    }).listen((event) {
      verifiedByTenantRx.$ = event;
    }));

    //related docs
    registerStream(libraryIdRx.stream.listen((event) {
      paginationController.refresh();
    }));
    registerStream(focusBookIdRx.stream.listen((event) {
      paginationController.refresh();
    }));
    registerStream(focusBookIdRx.streamWithInitial.switchMap((value) {
      if (value == null) {
        return Stream.value(null);
      }
      return apiService.api
          .getDocumentsApi()
          .apiAppDocumentsIdMeiliMappedDocumentGet(id: value)
          .asStream()
          .map((event) => event.data)
          .wrapWithArea(relatedArea);
    }).listen((event) {
      focusBookDetailsRx.$ = event;
    }));
  }
}
