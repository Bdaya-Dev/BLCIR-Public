import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';

class TenantDetails extends StatelessWidget {
  const TenantDetails({
    super.key,
    required this.tenant,
  });

  final BdayaBLCIRMTenantsAppTenantDto tenant;

  @override
  Widget build(BuildContext context) {
    final info = tenant.info;
    if (info == null) {
      return const SizedBox.shrink();
    }
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          spacing: 16,
          runSpacing: 8,
          children: [
            if (tenant.type != null)
              LabeledInfo(
                labelText: "Type",
                value: null,
                valueSpan: spanFromTenantType(tenant.type),
              ),
            if (info.address != null)
              LabeledInfo(
                labelText: "Address",
                value: info.address,
              ),
            if (info.creationTime != null)
              LabeledInfo(
                labelText: "Created At",
                value: info.creationTime?.toIso8601String(),
              ),
            if (tenant.creationTime != null)
              LabeledInfo(
                labelText: "Joined At",
                value: tenant.creationTime?.toIso8601String(),
              ),
            if (info.email != null)
              LabeledInfo(
                labelText: "Email",
                value: info.email,
              ),
            if (info.website != null)
              LabeledInfo(
                labelText: "Website",
                value: info.website,
              ),
            if (tenant.allowedBy?.result == null)
              RawChip(
                label: AppText(
                  "Pending Verification",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onErrorContainer,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                backgroundColor: Theme.of(context).colorScheme.errorContainer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
