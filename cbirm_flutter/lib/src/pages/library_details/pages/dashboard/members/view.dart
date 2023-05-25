import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'controller.dart';

class DashboardMembersView extends StatelessWidget {
  const DashboardMembersView({super.key, required this.controller});
  final DashboardMembersController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Wrap(
          spacing: 8,
          runSpacing: 8,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            AppText(
              'Employees',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            // IconButton(
            //   onPressed: () {},
            //   icon: const Icon(Icons.person_add),
            // ),
            SizedBox(
              width: 300,
              child: TextField(
                controller: controller.searchController,
                decoration: InputDecoration(
                  labelText: 'Search Members',
                  hintText: 'admin',
                  suffixIcon: IconButton(
                    onPressed: () => controller.searchController.clear(),
                    icon: const Icon(Icons.clear),
                  ),
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: PagedListView<int, IdentityIdentityUserDto>(
            pagingController: controller.paginationController,
            builderDelegate: PagedChildBuilderDelegate(
              itemBuilder: (context, item, index) {
                return ListTile(
                  title: AppText(item.userName ?? '-'),
                  subtitle: item.email == null ? null : AppText(item.email!),
                  // leading: IconButton(
                  //   onPressed: () {},
                  //   color: Theme.of(context).colorScheme.error,
                  //   icon: const Icon(Icons.delete),
                  // ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
