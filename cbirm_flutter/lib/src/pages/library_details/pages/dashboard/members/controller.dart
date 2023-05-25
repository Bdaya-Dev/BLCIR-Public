import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../_shell/controller.dart';

@lazySingleton
class DashboardMembersController extends BdayaCombinedController {
  final DashboardShellController shellController;
  final ApiService apiService;
  DashboardMembersController(this.shellController, this.apiService);

  final searchController = TextEditingController();
  final searchStreamController = BehaviorSubject<String>.seeded('');

  final paginationController =
      PagingController<int, IdentityIdentityUserDto>(firstPageKey: 0);

  Future<void> fetchPage(int skip) async {
    try {
      const limit = 20;
      final toFilter = searchStreamController.value;
      final res = await apiService.api.getUserApi().apiIdentityUsersGet(
            skipCount: skip,
            maxResultCount: limit,
            filter: toFilter.isEmpty ? null : toFilter,
          );
      final total = res.data?.totalCount ?? 0;
      final data = res.data?.items?.toList() ?? [];
      final isLast = skip + limit > total;
      if (isLast) {
        paginationController.appendLastPage(data);
      } else {
        paginationController.appendPage(data, skip + limit);
      }
    } catch (e, st) {
      paginationController.error = e;
      logger.severe("Error fetching users", e, st);
    }
  }

  @override
  void beforeRender(BuildContext context) {
    super.beforeRender(context);
    paginationController.addPageRequestListener(fetchPage);
    registerDisposableAction(
      () => paginationController.removePageRequestListener(fetchPage),
    );
    registerListenable(searchController, () {
      searchStreamController.add(searchController.text);
    });
    registerStream(
      searchStreamController.stream.distinct().listen(
            (event) => paginationController.refresh(),
          ),
    );
  }
}
