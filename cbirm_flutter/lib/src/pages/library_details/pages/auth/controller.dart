import 'package:cbirm_flutter/common.dart';

import '../../controller.dart';

@lazySingleton
class AuthController extends BdayaCombinedController {
  final AuthService authService;
  final LibraryDetailsController libraryDetailsController;

  AuthController(this.authService, this.libraryDetailsController);

  Future<void> login(BuildContext context, {required String libraryId}) async {
    try {
      startLoading();
      await authService.login(context: context, tenantId: libraryId);
      stopLoadingSuccess();
    } catch (e, st) {
      stopLoadingError(e, st, logger, "Error occured while logging in");
    }
  }

  Future<void> logout() async {
    try {
      startLoading();
      //
      await authService.logout();
      stopLoadingSuccess();
    } catch (e, st) {
      stopLoadingError(e, st, logger, "Error occured while logging out");
    }
  }
}
