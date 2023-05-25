import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'controller.dart';

class DashboardBooksView extends StatelessWidget {
  const DashboardBooksView({super.key, required this.controller});
  final DashboardBooksController controller;
  @override
  Widget build(BuildContext context) {
    final tenant = controller
        .shellController.libraryDetailsController.libraryDetailsRx
        .of(context);
    return BdayaLoadableAreaWrapper(
      area: controller.relatedArea,
      builder: (context) {
        // final books = controller.containedBooks.of(context);
        if (tenant == null) {
          return const SizedBox.shrink();
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BooksSearchbar(
              controller: controller,
              title: 'Resources',
              actions: [
                IconButton(
                  tooltip: 'Add Resource',
                  onPressed: () => controller.startAddProcess(context),
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
            const SizedBox(height: 8),
            SegmentedButton<bool?>(
              segments: const [
                ButtonSegment(
                  value: true,
                  label: AppText("Registered"),
                ),
                ButtonSegment(
                  value: false,
                  label: AppText("Not Registered"),
                ),
                ButtonSegment(
                  value: null,
                  label: AppText("All"),
                ),
              ],
              selected: {
                controller.bookRegisterationStatsuFilterRx.of(context),
              },
              emptySelectionAllowed: false,
              multiSelectionEnabled: false,
              onSelectionChanged: (p0) {
                controller.bookRegisterationStatsuFilterRx.$ = p0.first;
              },
            ),
            const SizedBox(height: 8),
            Expanded(
              child: PagedListView<int,
                  ResultContainer<BdayaBLCIRMStateMeiliDocumentDto>>(
                pagingController: controller.paginationController,
                // shrinkWrap: false,
                // physics: const NeverScrollableScrollPhysics(),
                builderDelegate: getBooksBuilderDelegate(
                  controller: controller,
                  focusLibraryId: tenant.id,
                  showEmptyIndicator: true,
                  tapToNavigate: false,
                  actionBuilder: (context, item) {
                    final entry = item.entries?.firstWhereOrNull(
                      (element) => element.tenantId == tenant.id,
                    );

                    return PopupMenuButton<void Function(BuildContext context)>(
                      itemBuilder: (context) {
                        return [
                          PopupMenuItem(
                            child: const AppText('Private Details'),
                            value: (context) => GoRouter.of(context).goNamed(
                              AppRouteNames.kDashboardBookDetails,
                              pathParameters: {
                                ...controller.shellController
                                    .params(context: context),
                                kBookId: item.id!,
                              },
                            ),
                          ),
                          PopupMenuItem(
                            child: const AppText('Public Details'),
                            value: (context) => GoRouter.of(context).goNamed(
                              AppRouteNames.kBookDetails,
                              pathParameters: {
                                kBookId: item.id!,
                              },
                            ),
                          ),
                          const PopupMenuDivider(),
                          if (entry == null) ...[
                            PopupMenuItem(
                              value: (context) =>
                                  controller.startRegisterResourceFlow(
                                context,
                                documentId: item.id!,
                              ),
                              child: const AppText('Register'),
                            ),
                          ] else ...[
                            if ((entry.availableQuantity ?? 0) > 0) ...[
                              PopupMenuItem(
                                value: (context) => controller.startLoanProcess(
                                    context, item, entry),
                                child: const AppText('Loan'),
                              ),
                            ],
                          ],
                        ];
                      },
                      onSelected: (value) => value(context),
                    );
                  },
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
