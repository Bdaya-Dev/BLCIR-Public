import 'package:cbirm_flutter/common.dart';
import 'controller.dart';

class DashboardHomeView extends StatelessWidget {
  const DashboardHomeView({
    super.key,
    required this.controller,
  });

  final DashboardHomeController controller;

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: AppText("Welcome to the dashboard\nYou can see some statistics here!"),
    );
  }
}
