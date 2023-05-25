import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'controller.dart';

class DashboardPeopleView extends StatelessWidget {
  const DashboardPeopleView({
    super.key,
    required this.controller,
  });

  static Widget hooked({
    BdayaGetItHookMode hookMode = BdayaGetItHookMode.lazySingleton,
    String? instanceName,
    Object? param1,
    Object? param2,
    List<Object?>? keys,
  }) =>
      HookBuilder(
        builder: (context) => DashboardPeopleView(
          controller: useBdayaViewController(
            hookMode: hookMode,
            instanceName: instanceName,
            keys: keys,
            param1: param1,
            param2: param2,
          ),
        ),
      );

  final DashboardPeopleController controller;

  @override
  Widget build(BuildContext context) {
    final mode = controller.modeRx.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Wrap(
          spacing: 8,
          runSpacing: 8,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            AppText(
              mode == null
                  ? 'All People'
                  : mode == PersonType.personOnly
                      ? 'Non-Authors'
                      : 'Authors',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Checkbox.adaptive(
              tristate: true,
              value: mode == null ? null : mode == PersonType.authorOnly,
              onChanged: (value) {
                controller.modeRx.$ = value == null
                    ? null
                    : value
                        ? PersonType.authorOnly
                        : PersonType.personOnly;
              },
            ),
            SizedBox(
              width: 300,
              child: TextField(
                controller: controller.searchController,
                decoration: InputDecoration(
                  icon: IconButton(
                    onPressed: () =>
                        controller.startEditFlow(context, person: null),
                    icon: const Icon(Icons.person_add),
                  ),
                  labelText: 'Search',
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
          child: PagedListView<int, ResultContainer<BdayaBLCIRMStatePersonDto>>(
            pagingController: controller.paginationController,
            builderDelegate: PagedChildBuilderDelegate(
              itemBuilder: (context, item, index) {
                final nameH =
                    item.formattedOr('Info.Name', (item) => item.info?.name);
                return ListTile(
                  title: HighlightedText(
                    original: nameH ?? '-',
                    preTag: '<em>',
                    postTag: '</em>',
                  ),
                  subtitle: item.object is BdayaBLCIRMStateAuthorDto
                      ? const AppText("Author")
                      : null,
                  leading: PopupMenuButton<void Function(BuildContext context)>(
                    onSelected: (value) => value(context),
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: const AppText("Edit"),
                        value: (context) => controller.startEditFlow(
                          context,
                          person: item.object,
                        ),
                      ),
                      PopupMenuItem(
                        child: const AppText("Delete"),
                        value: (context) => controller.startDeleteFlow(
                          context,
                          person: item.object,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
