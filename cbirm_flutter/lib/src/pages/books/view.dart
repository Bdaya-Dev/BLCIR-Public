import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import 'controller.dart';

class BooksView extends StatelessWidget {
  const BooksView({super.key, required this.controller});
  final BooksController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BooksSearchbar(
          controller: controller,
          title: 'Find Resources',
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: PagedListView<int,
                ResultContainer<BdayaBLCIRMStateMeiliDocumentDto>>(
              pagingController: controller.paginationController,
              builderDelegate: getBooksBuilderDelegate(
                controller: controller,
                focusLibraryId: null,
                showEmptyIndicator: true,
              ),
            ),
          ),
        ),
        // const Align(
        //   alignment: Alignment.bottomCenter,
        //   child: AppFooter(),
        // ),
      ],
    );
  }
}
