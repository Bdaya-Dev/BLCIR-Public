import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../controller.dart';

class RelatedBooksWidget extends StatelessWidget {
  const RelatedBooksWidget({super.key, required this.controller});
  final LibraryDetailsController controller;

  @override
  Widget build(BuildContext context) {
    return BdayaLoadableAreaWrapper(
      area: controller.relatedArea,
      builder: (context) {
        // final focusBookId = controller.focusBookIdRx.of(context);
        final focusBook = controller.focusBookDetailsRx.of(context);
        final libraryId = controller.libraryIdRx.of(context);
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                BooksSearchbar(
                  controller: controller,
                  title: 'Contained Resources',
                ),
                if (focusBook != null)
                  BookViewerWidget(
                    focusLibraryId: libraryId,
                    selected: true,
                    item: ResultContainer(
                      original: {},
                      object: focusBook,
                    ),
                  ),
                PagedListView<int,
                    ResultContainer<BdayaBLCIRMStateMeiliDocumentDto>>(
                  pagingController: controller.paginationController,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  builderDelegate: getBooksBuilderDelegate(
                    controller: controller,
                    focusLibraryId: libraryId,
                    showEmptyIndicator: focusBook == null,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
