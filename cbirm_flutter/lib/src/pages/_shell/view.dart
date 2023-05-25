import 'package:cbirm_flutter/common.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/link.dart';

class AppShellView extends StatelessWidget {
  const AppShellView({
    super.key,
    required this.controller,
    required this.child,
  });

  final AppShellController controller;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final state = GoRouterState.of(context);
    final isInDashboard =
        state.fullPath?.startsWith('/tenants/:libraryId/dashboard') == true;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: kToolbarHeight,
            child: Builder(
              builder: (context) {
                final currentUser =
                    controller.authService.currentProfile.of(context);
                final currentTenant =
                    controller.authService.currentTenant.of(context);

                return Row(
                  children: [
                    Link(
                      uri: Uri(path: '/'),
                      builder: (context, followLink) => InkWell(
                        onTap: followLink,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Assets.images.logo.image(),
                        ),
                      ),
                    ),
                    const Spacer(),
                    if (currentUser != null && currentTenant != null)
                      PopupMenuButton<void Function(BuildContext context)>(
                        onSelected: (value) => value(context),
                        tooltip: currentUser.email,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.account_circle),
                            const SizedBox(width: 8),
                            AppText(
                              '${currentUser.userName} | ${currentTenant.name}',
                            )
                          ],
                        ),
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            child: const AppText('Library Page'),
                            value: (context) {
                              GoRouter.of(context).goNamed(
                                AppRouteNames.kLibraryDetails,
                                pathParameters: {
                                  kLibraryId: currentTenant.id!,
                                },
                              );
                            },
                          ),
                          PopupMenuItem(
                            child: const AppText('Dashboard'),
                            value: (context) {
                              GoRouter.of(context).goNamed(
                                AppRouteNames.kLibraryDashboard,
                                pathParameters: {
                                  kLibraryId: currentTenant.id!,
                                },
                              );
                            },
                          ),
                          PopupMenuItem(
                            child: const AppText('Logout'),
                            value: (context) =>
                                controller.authService.logout().wrapWithArea(
                                      controller.logOutArea,
                                      controller.logger,
                                    ),
                          )
                        ],
                      ),
                  ],
                );
              },
            ),
          ),
          Expanded(
            child: isInDashboard
                ? child
                : AdaptiveScaffold(
                    destinations:
                        controller.targets.map((e) => e.destination).toList(),
                    body: (context) => child,
                    selectedIndex: controller.selectedIndex.of(context),
                    onSelectedIndexChange: (p0) =>
                        GoRouter.of(context).go(controller.targets[p0].route),
                  ),
          ),
        ],
      ),
    );
  }
}
