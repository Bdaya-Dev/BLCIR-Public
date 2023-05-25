import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';
import 'package:dio/dio.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:meilisearch/meilisearch.dart';

class CombinedGetBooksResults {
  final List<SearchResult<ResultContainer<BdayaBLCIRMStateMeiliDocumentDto>>>
      mappedRes;
  final List<String> resolvedFacets;
  final Map<String, Set<String>> appliedFacetFilters;

  const CombinedGetBooksResults({
    required this.mappedRes,
    required this.resolvedFacets,
    required this.appliedFacetFilters,
  });
}

mixin MeiliBooksSearch
    on BdayaLoggableMixin, BdayaLifeCycleMixin, BdayaDisposeHandlerMixin {
  ApiService get apiService;
  MeiliSearchService get meiliSearchService;

  int get pageSize => 20;

  final paginationController =
      PagingController<int, ResultContainer<BdayaBLCIRMStateMeiliDocumentDto>>(
    firstPageKey: 0,
  );

  final searchController = TextEditingController();
  final searchControllerRx = SharedValue(value: '');
  final totalBookHits = SharedValue<int?>(value: null);
  final filterByFacets = SharedValue(value: <String, Set<String>>{});
  final bookFacetResults = SharedValue(value: <String, Map<String, int>>{});

  MeiliOperatorExpressionBase? modifyFilterExpression(
    MeiliOrOperatorExpression? orFilter,
  ) {
    return orFilter;
  }

  Future<CombinedGetBooksResults?> requestBookItems({
    required int offset,
    required int limit,
    required String searchText,
    Map<String, Set<String>> currentFacetFilter = const {},
  }) async {
    final conf = apiService.config.$;
    final names = conf?.indexNames;
    final client = meiliSearchService.client.$;
    final metadata = apiService.metadata.$;
    if (client == null || conf == null || names == null || metadata.isEmpty) {
      return null;
    }
    final sort = metadata
        .where(
          (element) =>
              element.type == BdayaBLCIRMStateDocumentMetadataType.number2,
        )
        .map((e) => e.id)
        .whereNotNull()
        .map((e) => 'Info.Metadata.$e:asc')
        .toList();

    final facets = metadata
        .where((element) => element.isFacet == true)
        .map((e) => e.id)
        .whereNotNull()
        .map((e) => 'Info.Metadata.$e')
        .toList();

    final tohighlight = [
      'Info.Title',
      ...metadata
          .where((element) => element.isSearchable == true)
          .map((e) => e.id)
          .whereNotNull()
          .map((e) => 'Info.Metadata.$e')
    ];

    final orOperands = currentFacetFilter.entries
        .where((element) => element.value.isNotEmpty)
        .map(
          (e) => e.key
              .toMeiliAttribute()
              .$in(e.value.map((e) => e.toMeiliValue()).toList()),
        )
        .toList();
    final filterExp = modifyFilterExpression(
      orOperands.isEmpty ? null : Meili.or(orOperands),
    );
    final res = await client.multiSearch(MultiSearchQuery(queries: [
      SearchQuery(
        indexUid: '${names.documents}_en',
        query: searchText,
        offset: offset,
        limit: limit,
        sort: sort,
        facets: facets,
        attributesToHighlight: tohighlight,
        filterExpression: filterExp,
      ),
      SearchQuery(
        indexUid: '${names.documents}_ar',
        query: searchText,
        offset: offset,
        limit: limit,
        sort: sort,
        facets: facets,
        attributesToHighlight: tohighlight,
        filterExpression: filterExp,
      ),
    ]));

    final mappedRes = res.results
        .map(
          (searchRes) => searchRes.asSearchResult().map((src) {
            return ResultContainer(
              original: src,
              object: standardSerializers.deserializeWith(
                BdayaBLCIRMStateMeiliDocumentDto.serializer,
                src,
              )!,
            );
          }),
        )
        .toList();

    return CombinedGetBooksResults(
      resolvedFacets: facets,
      mappedRes: mappedRes,
      appliedFacetFilters: currentFacetFilter,
    );
  }

  Future<void> fetchBooksPage(int pageKey) async {
    try {
      final searchText = searchController.text;
      final ogRes = await requestBookItems(
        offset: pageKey,
        searchText: searchText,
        currentFacetFilter: filterByFacets.$,
        limit: pageSize,
      );
      final mappedRes = ogRes?.mappedRes;
      if (ogRes == null || mappedRes == null) {
        return;
      }

      if (ogRes.appliedFacetFilters.isEmpty) {
        final facetResults = mappedRes.map((e) => e.facetDistribution).toList();
        bookFacetResults.$ = mapFacetResults(
          facetResults: facetResults.whereNotNull(),
          facets: ogRes.resolvedFacets,
        );
      }
      final merged =
          mappedRes.map((e) => e.hits).flattened.whereNotNull().toList();

      final isLastPage = merged.length < mappedRes.map((e) => e.limit!).min;
      totalBookHits.$ = mappedRes.map((e) => e.estimatedTotalHits!).sum;
      if (isLastPage) {
        paginationController.appendLastPage(merged);
      } else {
        final nextPageKey = pageKey + pageSize;
        paginationController.appendPage(merged, nextPageKey);
      }
    } on MeiliSearchApiException catch (e) {
      paginationController.error = e.message;
    } on DioError catch (e) {
      paginationController.error = e.message;
    } catch (e) {
      paginationController.error = e;
    }
  }

  void manualRefresh() {
    paginationController.refresh();
  }

  @override
  void beforeRender(BuildContext context) {
    super.beforeRender(context);
    registerListenable(searchController, () {
      final newVal = searchController.text;
      if (searchControllerRx.$ == newVal) {
        return;
      }
      searchControllerRx.$ = newVal;
    });

    registerStream(
      searchControllerRx.stream.listen((value) {
        paginationController.refresh();
      }),
    );
    registerStream(
      filterByFacets.stream.listen((event) {
        paginationController.refresh();
      }),
    );

    paginationController.addPageRequestListener(fetchBooksPage);
    registerDisposableAction(
      () => paginationController.removePageRequestListener(fetchBooksPage),
    );
  }

  static Map<String, Map<String, int>> mapFacetResults({
    required Iterable<String> facets,
    required Iterable<Object> facetResults,
  }) {
    //
    final retMap = <String, Map<String, int>>{};
    final properFacetResults = facetResults.whereType<Map<String, Object?>>();
    for (var key in facets) {
      final entries = <String, int>{};
      for (var resMap in properFacetResults) {
        final resForKey = resMap[key];
        if (resForKey is! Map<String, Object?>) {
          continue;
        }
        final casted = resForKey.cast<String, int>();
        for (var element in casted.entries) {
          final prev = entries[element.key];
          if (prev != null) {
            entries[element.key] = prev + element.value;
          } else {
            entries[element.key] = element.value;
          }
        }
      }
      retMap[key] = entries;
    }
    return retMap;
  }
}
