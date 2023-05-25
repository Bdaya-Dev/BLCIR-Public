import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:meilisearch/meilisearch.dart';

import '../_shell/controller.dart';

@lazySingleton
class DashboardLoansController extends BdayaCombinedController {
  final DashboardShellController shellController;
  final ApiService apiService;
  final MeiliSearchService meiliSearchService;
  DashboardLoansController(
      this.shellController, this.apiService, this.meiliSearchService);

  final searchController = TextEditingController();
  final searchStreamController = BehaviorSubject<String>.seeded('');

  final paginationController = PagingController<int,
      ResultContainer<BdayaBLCIRMStateFullLoanDetailsDto>>(
    firstPageKey: 0,
  );

  Future<void> fetchPage(int skip) async {
    try {
      const limit = 20;
      final toFilter = searchStreamController.value;
      final index = meiliSearchService.loans;
      final libId = shellController.libraryIdRx.$;
      if (index == null || libId == null) return;
      final res = (await index.search(
        toFilter,
        offset: skip,
        limit: limit,
        filterExpression:
            'Tenant.Id'.toMeiliAttribute().eq(libId.toMeiliValue()).and(
                  'RemainingCopies'.toMeiliAttribute().gt(0.toMeiliValue()),
                ),
        attributesToHighlight: [
          'Person.Info.Name',
          'Document.Info.Title',
        ],
      )) as SearchResult;
      final merged = res.hits
          .map((e) {
            final obj = standardSerializers.deserializeWith(
              BdayaBLCIRMStateFullLoanDetailsDto.serializer,
              e,
            );
            return obj == null
                ? null
                : ResultContainer(
                    original: e,
                    object: obj,
                  );
          })
          .whereNotNull()
          .toList();
      final isLastPage = merged.length < res.limit!;
      if (isLastPage) {
        paginationController.appendLastPage(merged);
      } else {
        paginationController.appendPage(merged, res.offset! + res.limit!);
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
