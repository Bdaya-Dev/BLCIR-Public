import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

typedef ItemActionBuilder<T> = Widget Function(
  BuildContext context,
  T item,
);

class BookViewerWidget extends StatelessWidget {
  const BookViewerWidget({
    super.key,
    required this.item,
    required this.focusLibraryId,
    this.selected = false,
    this.tapToNavigate = true,
    this.actionBuilder,
  });

  final ResultContainer<BdayaBLCIRMStateMeiliDocumentDto> item;
  final String? focusLibraryId;
  final bool selected;
  final ItemActionBuilder<BdayaBLCIRMStateMeiliDocumentDto>? actionBuilder;
  final bool tapToNavigate;
  @override
  Widget build(BuildContext context) {
    final ogInfo = item.object.info;
    final ogMetadata = ogInfo?.metadata;
    String? getOgMetadata(String key) {
      final obj = ogMetadata?[key];
      if (obj == null) {
        return null;
      }
      if (obj.isString) {
        return obj.asString;
      }
      return null;
    }

    final formattedInfo =
        item.original['_formatted']?['Info'] as Map<String, Object?>?;
    final formattedMetadata =
        formattedInfo?['Metadata'] as Map<String, Object?>?;

    final title = formattedInfo?['Title'] as String? ?? ogInfo?.title;

    const kSubjectHeadings = 'SubjectHeadings';
    const kPublishYear = 'PublishYear';
    const kAuthor = 'Author';
    const kISBN = 'ISBN';
    const kPreTag = '<em>';
    const kPostTag = '</em>';
    const highlightTextStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
      decoration: TextDecoration.underline,
    );
    final subjectHeadings = formattedMetadata?[kSubjectHeadings] as String? ??
        getOgMetadata(kSubjectHeadings);
    final publishYear = formattedMetadata?[kPublishYear] as String? ??
        getOgMetadata(kPublishYear);
    final isbn = formattedMetadata?[kISBN] as String? ?? getOgMetadata(kISBN);
    final author =
        formattedMetadata?[kAuthor] as String? ?? getOgMetadata(kAuthor);
    final focusedEntry = focusLibraryId == null
        ? null
        : item.object.entries
            ?.firstWhereOrNull((element) => element.tenantId == focusLibraryId);
    final actionWidget = actionBuilder?.call(context, item.object);

    final body = Card(
      color: selected ? Theme.of(context).colorScheme.primaryContainer : null,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (actionWidget != null) actionWidget,
                HighlightedText(
                  original: title ?? '-',
                  preTag: kPreTag,
                  postTag: kPostTag,
                  textStyle: const TextStyle(
                    fontSize: 24,
                  ),
                  highlightedStyle: highlightTextStyle.copyWith(
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (var item in [
                  MapEntry('Author', author),
                  MapEntry('Subject', subjectHeadings),
                  MapEntry('Publish Year', publishYear),
                  MapEntry('ISBN', isbn),
                ])
                  if (item.value != null)
                    LabeledInfo(
                      labelText: item.key,
                      value: null,
                      valueSpan: highlightedTextToSpan(
                        item.value!,
                        preTag: kPreTag,
                        postTag: kPostTag,
                        highlightedStyle: highlightTextStyle,
                      ),
                      style: const TextStyle(),
                    ),
              ],
            ),
            if (focusedEntry != null) ...[
              const Divider(),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  LabeledInfo(
                    labelText: "Owned",
                    value: focusedEntry.ownedQuantity?.toString(),
                  ),
                  LabeledInfo(
                    labelText: "Loaned",
                    value: focusedEntry.loanedQuantity?.toString(),
                  ),
                  LabeledInfo(
                    backgroundColor:
                        Theme.of(context).colorScheme.primaryContainer,
                    labelText: "Available",
                    value: focusedEntry.availableQuantity?.toString(),
                  ),
                ],
              )
            ],
          ],
        ),
      ),
    );
    return tapToNavigate
        ? InkWell(
            onTap: () {
              GoRouter.of(context).goNamed(
                AppRouteNames.kBookDetails,
                pathParameters: {
                  kBookId: item.object.id!,
                },
              );
            },
            child: body,
          )
        : body;
  }
}

PagedChildBuilderDelegate<ResultContainer<BdayaBLCIRMStateMeiliDocumentDto>>
    getBooksBuilderDelegate({
  required MeiliBooksSearch controller,
  required String? focusLibraryId,
  required bool showEmptyIndicator,
  ItemActionBuilder<BdayaBLCIRMStateMeiliDocumentDto>? actionBuilder,
  bool tapToNavigate = true,
}) {
  return PagedChildBuilderDelegate(
    firstPageErrorIndicatorBuilder: (context) {
      final error = controller.paginationController.error;
      return FirstPageExceptionIndicator(
        title: 'Something went wrong',
        message: error.toString(),
        onTryAgain: controller.paginationController.retryLastFailedRequest,
      );
    },
    itemBuilder: (context, item, index) => BookViewerWidget(
      item: item,
      focusLibraryId: focusLibraryId,
      actionBuilder: actionBuilder,
      tapToNavigate: tapToNavigate,
    ),
    noItemsFoundIndicatorBuilder: (context) {
      if (!showEmptyIndicator) {
        return const SizedBox.shrink();
      }

      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Assets.images.logo.image(
              width: 256,
              fit: BoxFit.fitHeight,
            ),
            const AppText("No Items Found!"),
          ],
        ),
      );
    },
  );
}
