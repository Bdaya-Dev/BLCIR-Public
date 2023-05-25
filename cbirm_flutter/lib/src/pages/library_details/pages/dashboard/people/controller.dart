import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:meilisearch/meilisearch.dart';

import '../_shell/controller.dart';

enum PersonType {
  authorOnly,
  personOnly,
}

@lazySingleton
class DashboardPeopleController extends BdayaCombinedController {
  DashboardPeopleController(
    this.apiService,
    this.meiliSearchService,
    this.shellController,
  );

  final DashboardShellController shellController;
  final ApiService apiService;
  final MeiliSearchService meiliSearchService;
  final modeRx = SharedValue<PersonType?>(value: null);
  final searchController = TextEditingController();
  final searchStreamController = BehaviorSubject<String>.seeded('');

  final paginationController =
      PagingController<int, ResultContainer<BdayaBLCIRMStatePersonDto>>(
    firstPageKey: 0,
  );

  Future<void> fetchPage(int skip) async {
    try {
      const limit = 20;
      final mode = modeRx.$;
      final toFilter = searchStreamController.value;
      final index = meiliSearchService.people;
      if (index == null) return;
      final res = await index
          .search(
            toFilter,
            offset: skip,
            limit: limit,
            attributesToHighlight: [
              'Info.Name',
            ],
            filterExpression: mode == null
                ? null
                : 'type'.toMeiliAttribute().eq(
                      (mode == PersonType.personOnly ? "person" : "author")
                          .toMeiliValue(),
                    ),
          )
          .asSearchResult();
      final merged = res.hits
          .map((e) {
            final obj = standardSerializers.deserializeWith(
              BdayaBLCIRMStatePersonDto.serializer,
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
    registerStream(modeRx.stream.listen((event) {
      paginationController.refresh();
    }));
  }

  Future<void> startEditFlow(
    BuildContext context, {
    required BdayaBLCIRMStatePersonDto? person,
  }) async {
    final res = await PersonView.showModal(
      context,
      isAuthor: person == null
          ? modeRx.$ == PersonType.authorOnly
          : person is BdayaBLCIRMStateAuthorDto,
      initialId: person?.id,
    );
    if (res != null) {
      paginationController.refresh();
    }
  }

  Future<void> startDeleteFlow(
    BuildContext context, {
    required BdayaBLCIRMStatePersonDto person,
  }) async {
    final result = await showOkCancelAlertDialog(
      context: context,
      message: 'Are you sure you want to delete the person ?',
    );
    if (result == OkCancelResult.ok) {
      final transaction = await apiService.api
          .getPeopleApi()
          .apiAppPeopleIdDelete(
            id: person.id!,
          )
          .then((value) => value.data);
      final info = transaction?.info;
      if (info is BdayaBLCIRMDeletePersonTransactionInfoDto) {
        paginationController.refresh();
        if (context.mounted) {
          final _ = await showOkCancelAlertDialog(
            context: context,
            message: 'A vote to delete the person has been initiated',
          );
        }
      }
    }
  }
}
