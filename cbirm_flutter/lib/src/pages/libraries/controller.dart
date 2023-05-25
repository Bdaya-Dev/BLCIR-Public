import 'package:blcirm_api/blcirm_api.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import 'package:cbirm_flutter/common.dart';
import 'package:meilisearch/meilisearch.dart';

enum VerificationStatusValues {
  verifiedOnly,
  deniedOnly,
  pendingOnly,
}

bool? _mapVerificationStatus(VerificationStatusValues status) {
  switch (status) {
    case VerificationStatusValues.verifiedOnly:
      return true;
    case VerificationStatusValues.deniedOnly:
      return false;

    case VerificationStatusValues.pendingOnly:
      return null;
    default:
      throw StateError("Unkown enum value");
  }
}

@lazySingleton
class LibrariesController extends BdayaCombinedController {
  static const pageSize = 20;

  final textController = TextEditingController();
  late final textValue = BehaviorSubject.seeded(textController.text);
  final paginationController =
      PagingController<int, ResultContainer<BdayaBLCIRMTenantsAppTenantDto>>(
    firstPageKey: 0,
  );

  final verificationFilter = SharedValue(
    value: {VerificationStatusValues.verifiedOnly},
  );

  final librariesFilter = SharedValue(value: <BdayaBLCIRMOrgType>{
    BdayaBLCIRMOrgType.number0,
    BdayaBLCIRMOrgType.number2
  });
  final totalHits = SharedValue<int?>(value: null);

  final ApiService apiService;
  final MeiliSearchService meiliSearchService;
  final GoRouterService goRouterService;
  LibrariesController(
    this.apiService,
    this.meiliSearchService,
    this.goRouterService,
  );

  Future<void> _fetch(int pageKey) async {
    try {
      final searchText = textController.text;
      final index = meiliSearchService.tenants;
      if (index == null) {
        return;
      }
      final filter = librariesFilter.$;
      final verifiedFilter = verificationFilter.$;
      final resultAttr = "AllowedBy.Result".toMeiliAttribute();
      final res = await index.search(
        searchText,
        offset: pageKey,
        limit: pageSize,
        attributesToHighlight: ["Name"],
        filterExpression: Meili.and([
          if (verifiedFilter.isNotEmpty)
            Meili.or([
              Meili.$in(
                resultAttr,
                verifiedFilter
                    .map(_mapVerificationStatus)
                    .whereNotNull()
                    .map((e) => e.toMeiliValue())
                    .toList(),
              ),
              if (verifiedFilter.contains(VerificationStatusValues.pendingOnly))
                resultAttr.notExists(),
            ]),
          if (filter.isNotEmpty)
            "Type".toMeiliAttribute().$in(
                  filter
                      .map(
                        (e) => (standardSerializers.serializeWith(
                          BdayaBLCIRMOrgType.serializer,
                          e,
                        ) as int)
                            .toMeiliValue(),
                      )
                      .toList(),
                ),
        ]),
      );
      final hitsMapped = res.hits
          .map(
            (e) {
              final obj = standardSerializers.deserializeWith(
                BdayaBLCIRMTenantsAppTenantDto.serializer,
                e,
              );
              return obj == null
                  ? null
                  : ResultContainer(
                      original: e,
                      object: obj,
                    );
            },
          )
          .whereNotNull()
          .toList();
      final searchRes = res as SearchResult;
      final isLastPage = hitsMapped.length < (searchRes.limit ?? pageSize);
      totalHits.$ = searchRes.estimatedTotalHits;
      if (isLastPage) {
        paginationController.appendLastPage(hitsMapped);
      } else {
        final nextPageKey = searchRes.offset! + searchRes.limit!;
        paginationController.appendPage(hitsMapped, nextPageKey);
      }
    } catch (e, st) {
      paginationController.error = e;
      logger.severe("Error when fetching tenants", e, st);
    }
  }

  @override
  void beforeRender(BuildContext context) {
    super.beforeRender(context);
    textController.addListener(() {
      final newVal = textController.text;
      if (textValue.valueOrNull == newVal) {
        return;
      }
      textValue.add(newVal);
    });

    registerStream(verificationFilter.stream.listen((event) {
      paginationController.refresh();
    }));
    registerStream(librariesFilter.stream.listen((event) {
      paginationController.refresh();
    }));
    registerStream(
      textValue.listen((value) {
        paginationController.refresh();
      }),
    );
    paginationController.addPageRequestListener(_fetch);
  }

  @override
  void onDispose(BuildContext context) {
    paginationController.dispose();
    textController.dispose();
    super.onDispose(context);
  }
}
