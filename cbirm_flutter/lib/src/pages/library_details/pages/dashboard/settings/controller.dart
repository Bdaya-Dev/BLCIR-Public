import 'package:cbirm_flutter/common.dart';

import '../_shell/controller.dart';

@lazySingleton
class DashboardSettingsController extends BdayaCombinedController {
  final DashboardShellController shellController;
  final ApiService apiService;
  DashboardSettingsController(this.shellController, this.apiService);
}
