import 'package:go_router/go_router.dart';

import 'common.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  GoRouter getRouter(GoRouterRefreshService goRouterRefreshService) => GoRouter(
        observers: [
          // seoRouteObserver,
        ],
        errorBuilder: (context, state) {
          return Scaffold(
            body: const CustomNotFoundWidget(),
            backgroundColor: Colors.grey[300],
          );
        },
        initialLocation: AppRouteNames.initialRoute,
        // redirect: (context, state) {
        //   // if (state.location == '/') {
        //   //   return initialRoute;
        //   // }
        //   return null;
        // },
        refreshListenable: goRouterRefreshService,
        routes: appRoutesList(goRouterRefreshService),
      );
}
