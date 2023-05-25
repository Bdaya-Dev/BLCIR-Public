import 'package:cbirm_flutter/common.dart';

import '../controller.dart';

class LibraryAppBar extends StatelessWidget {
  const LibraryAppBar({
    super.key,
    required this.libraryId,
    required this.controller,
  });

  final String libraryId;
  final LibraryDetailsController controller;

  @override
  Widget build(BuildContext context) {
    final tenantDetails = controller.libraryDetailsRx.of(context);
    final authedTenantId = controller.authService.currentTenantId.of(context);
    final authedTenant = controller.authService.currentTenant.of(context);
    final authedUser = controller.authService.currentUser.of(context);
    // final isVerified = tenantDetails?.allowedBy?.result != null;
    return AppBar(
      leading: authedUser == null || authedTenantId != libraryId
          ? BdayaLoadableAreaWrapper(
              area: controller.loginArea,
              builder: (context) {
                return IconButton(
                  tooltip: authedUser == null || authedTenant == null
                      ? 'Login'
                      : 'Login (Logout from ${authedTenant.name})',
                  onPressed: () =>
                      controller.login(context, libraryId: libraryId),
                  icon: const Icon(Icons.login),
                );
              },
            )
          : IconButton(
              tooltip: 'Dashboard',
              onPressed: () {
                controller.goRouter.goNamed(
                  AppRouteNames.kLibraryDashboard,
                  pathParameters: {
                    kLibraryId: libraryId,
                  },
                );
              },
              icon: const Icon(Icons.dashboard),
            ),
      title: AppText(tenantDetails?.name ?? '-'),
    );
  }
}
