import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';
import 'components/searchbar.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'components/library_item.dart';
import 'controller.dart';

class LibrariesView extends StatelessWidget {
  const LibrariesView({super.key, required this.controller});
  final LibrariesController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
          child: Searchbar(controller: controller),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: PagedListView<int,
                ResultContainer<BdayaBLCIRMTenantsAppTenantDto>>(
              pagingController: controller.paginationController,
              builderDelegate: PagedChildBuilderDelegate(
                itemBuilder: (context, item, index) {
                  return LibraryItem(
                    key: ValueKey(item.object.id),
                    controller: controller,
                    tenantDto: item,
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
