import 'package:cbirm_flutter/common.dart';
import '../controller.dart';

class VerificationInfo extends StatelessWidget {
  const VerificationInfo({
    super.key,
    required this.controller,
  });

  final LibraryDetailsController controller;

  @override
  Widget build(BuildContext context) {
    return BdayaLoadableAreaWrapper(
      area: controller.verificationArea,
      builder: (context) {
        final verifiedBy = controller.verifiedByTenantRx.of(context);
        final details = controller.libraryDetailsRx.of(context);
        final verificationResult = details?.allowedBy?.result;
        if (details == null || verificationResult == null) {
          return const SizedBox.shrink();
        }
        final statusStr = verificationResult ? 'Verified' : 'Denied';
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 16,
              runSpacing: 8,
              children: [
                Tooltip(
                  message: statusStr,
                  child: Icon(
                    verificationResult ? Icons.check_circle : Icons.cancel,
                    color: verificationResult
                        ? Colors.green
                        : Theme.of(context).colorScheme.error,
                  ),
                ),
                LabeledInfo(
                  labelText: "$statusStr By",
                  value: verifiedBy?.name ?? "System",
                  onTap: verifiedBy == null
                      ? null
                      : () {
                          controller.goRouter.goNamed(
                            AppRouteNames.kLibraryDetails,
                            pathParameters: {
                              kLibraryId: details.allowedBy!.tenantId!,
                            },
                          );
                        },
                ),
                LabeledInfo(
                  labelText: "$statusStr At",
                  value: details.allowedBy?.creationTime?.toIso8601String(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
