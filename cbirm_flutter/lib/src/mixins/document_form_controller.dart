import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';
import 'package:meilisearch/meilisearch.dart';

mixin DocumentFormControllerMixin on BdayaCombinedController, MeiliBooksSearch {
  final initialModelRx = SharedValue<DocumentModel>(
    value: const DocumentModel(),
  );

  final formRx = SharedValue<DocumentModelForm?>(value: null);
  final searchAuthorsController = TextEditingController(text: '');
  Future<List<ResultContainer<BdayaBLCIRMStateAuthorDto>>> getAuthorSuggestions(
    String pattern,
  ) async {
    final index = meiliSearchService.people;
    if (index == null) {
      return [];
    }
    final res = await index
        .search(
          pattern,
          attributesToHighlight: ['*'],
          highlightPreTag: '<em>',
          highlightPostTag: '</em>',
          limit: 50,
          filterExpression:
              r'type'.toMeiliAttribute().eq('author'.toMeiliValue()),
        )
        .asSearchResult()
        .map(
          (src) => ResultContainer(
            original: src,
            object: standardSerializers.deserializeWith(
              BdayaBLCIRMStateAuthorDto.serializer,
              src,
            )!,
          ),
        );
    return res.hits;
  }

  @override
  void beforeRender(BuildContext context) {
    super.beforeRender(context);
    registerStream(apiService.metadata.streamWithInitial.listen((event) {
      final currentMetadataDefs =
          Map.fromEntries(event.map((e) => MapEntry(e.id!, e)));
      initialModelRx.update((p0) {
        final existingMetadataValues = Map.fromEntries(
            p0.metadataValues.map((e) => MapEntry(e.key, e.value)));

        final merged = currentMetadataDefs.map((key, value) =>
            MapEntry(key, Tuple2(value, existingMetadataValues[key])));

        return p0.copyWith(
            metadataValues: merged.entries
                .map((e) => MetadataValue(key: e.key, value: e.value.item2))
                .toList());
      });
    }));
  }

  void reset(
    BuildContext context, {
    required DocumentModelForm form,
    required DocumentModel initial,
  }) {
    initialModelRx.update((p0) => p0.copyWith());
  }

  Future<void> startAuthorAddFlow(
    BuildContext context,
    DocumentModelForm form,
  ) async {
    final res = await PersonView.showModal(
      context,
      isAuthor: true,
      initialId: null,
    );
    if (res is! BdayaBLCIRMStateAuthorDto) {
      return;
    }
    form.addAuthorsItem(res);
  }
}
