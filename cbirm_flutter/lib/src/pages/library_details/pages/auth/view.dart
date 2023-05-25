import 'package:cbirm_flutter/common.dart';
import 'controller.dart';

class AuthView extends StatelessWidget {
  const AuthView({
    super.key,
    required this.controller,
  });
  final AuthController controller;
  @override
  Widget build(BuildContext context) {
    // final isLoading = controller.isLoading(context);
    final libraryId = controller.libraryDetailsController.libraryIdRx.of(context);
    final libraryDetails =
        controller.libraryDetailsController.libraryDetailsRx.of(context);
    final authedTenantId = controller.authService.currentTenantId.of(context);
    final authedUser = controller.authService.currentUser.of(context);
    // final authState = controller.authService.isAuthed.of(context);
    if (libraryId == null) return const SizedBox.shrink();
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Auth to library (${libraryDetails?.name})'),
          const SizedBox(height: 8),
          BdayaLoadableAreaWrapper(
            area: controller.defaultArea,
            builder: (context) {
              return Column(
                children: [
                  if (authedUser == null)
                    ElevatedButton.icon(
                      onPressed: () =>
                          controller.login(context, libraryId: libraryId),
                      icon: const Icon(Icons.login),
                      label: const AppText('Login With BLCIRM'),
                    )
                  else if (authedTenantId != libraryId) ...[
                    const AppText(
                      "User already authenticated to a different library, Logout first, then authenticate again to this library",
                    ),
                    ElevatedButton.icon(
                      onPressed: controller.logout,
                      icon: const Icon(Icons.logout),
                      label: const AppText("Logout"),
                    )
                  ],
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
