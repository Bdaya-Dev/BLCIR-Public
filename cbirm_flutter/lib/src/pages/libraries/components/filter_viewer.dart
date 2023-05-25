import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';

import '../controller.dart';

class FilterViewer extends StatelessWidget {
  const FilterViewer({
    super.key,
    required this.controller,
  });

  final LibrariesController controller;

  @override
  Widget build(BuildContext context) {
    final verificationFilter = controller.verificationFilter.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const AppText('Tenants Filter'),
          const Divider(),
          SegmentedButton<BdayaBLCIRMOrgType>(
            segments: const [
              ButtonSegment(
                value: BdayaBLCIRMOrgType.number0,
                label: AppText("Libraries"),
              ),
              ButtonSegment(
                value: BdayaBLCIRMOrgType.number1,
                label: AppText("Publishers"),
              ),
              ButtonSegment(
                value: BdayaBLCIRMOrgType.number2,
                label: AppText("Trusted Authorities"),
              ),
            ],
            selected: controller.librariesFilter.of(context),
            emptySelectionAllowed: false,
            onSelectionChanged: (p0) {
              controller.librariesFilter.$ = p0;
            },
            multiSelectionEnabled: true,
          ),
          const SizedBox(height: 8),
          SegmentedButton(
            showSelectedIcon: false,
            segments: [
              ButtonSegment(
                value: VerificationStatusValues.verifiedOnly,
                icon: Icon(
                  Icons.check_circle,
                  color: Theme.of(context).colorScheme.primary,
                ),
                label: const AppText("Verified Only"),
              ),
              ButtonSegment(
                value: VerificationStatusValues.deniedOnly,
                icon: Icon(
                  Icons.cancel,
                  color: Theme.of(context).colorScheme.error,
                ),
                label: const AppText("Denied Only"),
              ),
              const ButtonSegment(
                value: VerificationStatusValues.pendingOnly,
                icon: Icon(
                  Icons.watch_later_outlined,
                ),
                label: AppText("Pending Only"),
              ),
            ],
            selected: verificationFilter,
            emptySelectionAllowed: false,
            onSelectionChanged: (p0) {
              controller.verificationFilter.$ = p0.toSet();
            },
            multiSelectionEnabled: true,
          ),
        ],
      ),
    );
  }
}
