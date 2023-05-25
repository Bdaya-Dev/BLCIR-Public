import 'package:cbirm_flutter/common.dart';

@lazySingleton
class AppShellController extends BdayaCombinedRouteController {
  final GoRouterService goRouterService;
  final AuthService authService;
  AppShellController(this.goRouterService, this.authService);
  late final logOutArea = withLoadableArea(name: 'logout');
  final selectedIndex = SharedValue(value: 0);

  late final targets = [
    const NavigationTarget(
      destination: NavigationDestination(
        icon: Icon(Icons.home),
        label: "Home",
      ),
      route: '/',
    ),
    NavigationTarget(
      destination: const NavigationDestination(
        icon: Icon(Icons.local_library),
        label: "Tenants",
      ),
      route: goRouterService.namedLocation(AppRouteNames.kLibraries).toString(),
    ),
    NavigationTarget(
      destination: const NavigationDestination(
        icon: Icon(Icons.menu_book),
        label: "Resources",
      ),
      route: goRouterService.namedLocation(AppRouteNames.kBooks).toString(),
    ),
    NavigationTarget(
      destination: const NavigationDestination(
        icon: Icon(Icons.info),
        label: "About Us",
      ),
      route: goRouterService.namedLocation(AppRouteNames.kAboutUs).toString(),
    ),
  ];

  late final currentRoute =
      SharedValue<Uri>(value: Uri.parse(goRouter.location));

  @override
  void onRouteInformationChanged(GoRouterRouteMatch route) {
    currentRoute.$ = route.uri;
  }

  @override
  void beforeRender(BuildContext context) {
    super.beforeRender(context);
    registerStream(currentRoute.streamWithInitial.map((value) {
      final path = value.path;
      final res = targets.indexWhere((element) => element.route == path);
      if (res < 0) {
        return targets
            .toList()
            .lastIndexWhere((element) => path.startsWith(element.route));
      } else {
        return res;
      }
    }).listen((event) {
      selectedIndex.$ = event;
    }));
  }
}
