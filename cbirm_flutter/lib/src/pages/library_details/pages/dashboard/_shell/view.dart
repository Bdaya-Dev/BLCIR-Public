import 'package:cbirm_flutter/common.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:go_router/go_router.dart';
import 'components/not_verified_yet.dart';
import 'controller.dart';

class DashboardShellView extends StatelessWidget {
  const DashboardShellView({
    super.key,
    required this.controller,
    required this.child,
  });
  final DashboardShellController controller;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final targets = controller.targets(context: context);
    if (targets.isEmpty) {
      return const SizedBox.shrink();
    }
    final allowedBy = controller.libraryDetailsController.libraryDetailsRx
        .of(context)
        ?.allowedBy;
    if (allowedBy?.creationTime == null) {
      return const NotVerifiedYet();
    }
    return AdaptiveScaffold(
      destinations: targets.map((e) => e.destination).toList(),
      body: (context) => child,
      selectedIndex: controller.selectedIndex.of(context),
      onSelectedIndexChange: (p0) => GoRouter.of(context).go(targets[p0].route),
    );
  }
}
