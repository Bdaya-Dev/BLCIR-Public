import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';
import 'package:go_router/go_router.dart';

class TenantCard extends StatelessWidget {
  const TenantCard({
    super.key,
    required this.tenantDto,
  });

  final BdayaBLCIRMTenantsAppTenantDto tenantDto;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Wrap(
              spacing: 8,
              runSpacing: 8,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                AppText(
                  tenantDto.name!,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                IconButton(
                  tooltip: "Go to public page",
                  onPressed: () {
                    GoRouter.of(context).goNamed(
                      AppRouteNames.kLibraryDetails,
                      pathParameters: {
                        kLibraryId: tenantDto.id!,
                      },
                    );
                  },
                  icon: const Icon(Icons.arrow_circle_right),
                ),
              ],
            ),
            const Divider(),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                // LabeledInfo(labelText: 'Name', value: tenantDto.name),
                LabeledInfo(
                  labelText: 'Type',
                  valueSpan: spanFromTenantType(tenantDto.type),
                  value: null,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
