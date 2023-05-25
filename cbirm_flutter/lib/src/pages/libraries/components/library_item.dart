import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';
import 'package:go_router/go_router.dart';

import '../controller.dart';

class LibraryItem extends StatelessWidget {
  const LibraryItem({
    super.key,
    required this.tenantDto,
    required this.controller,
  });

  final LibrariesController controller;
  final ResultContainer<BdayaBLCIRMTenantsAppTenantDto> tenantDto;

  @override
  Widget build(BuildContext context) {
    final tenant = tenantDto.object;
    final libraryId = tenant.id!;
    final isPending = tenant.allowedBy?.result == null;
    final isVerified = tenant.allowedBy?.result == true;
    final formatted = tenantDto.original['_formatted'] as Map<String, Object?>?;
    final formattedName = formatted?['Name'] as String? ?? tenant.name;
    final type = tenant.type?.toFriendlyString();
    final logo = tenant.info?.logo;
    return ListTile(
      onTap: () {
        final location = controller.goRouterService.namedLocation(
          AppRouteNames.kLibraryDetails,
          pathParameters: {
            kLibraryId: libraryId,
          },
        );
        GoRouter.of(context).go(location.toString());
      },
      subtitle: type == null ? null : AppText(type),
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          HighlightedText(
            original: formattedName ?? '-',
            preTag: "<em>",
            postTag: "</em>",
          ),
          const SizedBox(height: 8),
          if (isPending)
            const Tooltip(
              message: "Pending Verification",
              child: Icon(
                Icons.watch_later,
                
              ),
            )
          else if (isVerified)
            Tooltip(
              message:
                  "Verified At ${tenant.allowedBy!.creationTime!.toIso8601String()}",
              child: const Icon(
                Icons.check_circle,
                color: Colors.green,
              ),
            )
          else
            Tooltip(
              message:
                  "Denied At ${tenant.allowedBy!.creationTime!.toIso8601String()}",
              child: const Icon(
                Icons.cancel,
                color: Colors.red,
              ),
            ),
        ],
      ),
      leading: logo == null
          ? null
          : Image.network(
              logo,
              fit: BoxFit.fitHeight,
            ),
    );
  }
}
