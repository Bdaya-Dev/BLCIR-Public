import 'package:cbirm_flutter/common.dart';
import 'components/details.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';

import 'components/app_bar.dart';
import 'components/related.dart';
import 'components/verification.dart';
import 'controller.dart';

class LibraryDetailsView extends StatelessWidget {
  const LibraryDetailsView({super.key, required this.controller});
  final LibraryDetailsController controller;

  @override
  Widget build(BuildContext context) {
    final libraryId = controller.libraryIdRx.of(context);
    final tenantDetails = controller.libraryDetailsRx.of(context);
    // final authedTenantId = controller.authService.currentTenantId.of(context);
    // final authedTenant = controller.authService.currentTenant.of(context);
    // final authedUser = controller.authService.currentUser.of(context);
    if (libraryId == null) {
      return const Center(child: CircularProgressIndicator.adaptive());
    }
    return BdayaLoadableAreaWrapper(
      area: controller.defaultArea,
      builder: (context) => AdaptiveLayout(
        topNavigation: SlotLayout(
          config: {
            Breakpoints.standard: SlotLayout.from(
              key: const ValueKey('appbar'),
              builder: (context) => SizedBox(
                height: 45,
                child: LibraryAppBar(
                  libraryId: libraryId,
                  controller: controller,
                ),
              ),
            ),
          },
        ),
        body: SlotLayout(
          config: {
            Breakpoints.standard: SlotLayout.from(
              key: const ValueKey('body'),
              builder: (context) => ListView(
                children: [
                  if (tenantDetails != null)
                    TenantDetails(tenant: tenantDetails),
                  VerificationInfo(controller: controller),
                  const Divider(),
                  RelatedBooksWidget(controller: controller)
                ],
              ),
            ),
          },
        ),
      ),
    );
  }
}
