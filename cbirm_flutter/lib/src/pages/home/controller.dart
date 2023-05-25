import 'package:blcirm_api/blcirm_api.dart';

import 'package:cbirm_flutter/common.dart';

@lazySingleton
class PublicHomeController extends BdayaCombinedController {
  final scrollController = ScrollController(
    debugLabel: 'publicHomeScrollController',
  );
  final allLibraries =
      SharedValue<List<BdayaBLCIRMTenantsAppTenantDto>>(value: []);
  final AppShellController shellController;
  final GoRouterService goRouterService;
  final ApiService apiService;

  PublicHomeController(
    this.shellController,
    this.goRouterService,
    this.apiService,
  );

  // final focusedIndex = SharedValue(value: 0.0);
  // final ourLibrariesScrollController = ScrollController(debugLabel: 'our libraries');
  @override
  void beforeRender(BuildContext context) {
    super.beforeRender(context);
    getTenants();
  }

  Future<void> getTenants() async {
    try {
      startLoading();
      final resp = await apiService.api
          .getAppTenantApi()
          .apiAppAppTenantGet(maxResultCount: 20);
      allLibraries.$ = resp.data?.items?.toList() ?? [];
      stopLoadingSuccess();
    } catch (e, st) {
      stopLoadingError(e, st, logger, "Failed to load tenants");
    }
  }
}
