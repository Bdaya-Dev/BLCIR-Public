import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';
import 'package:go_router/go_router.dart';
import '../_components/loans_widget.dart';
import 'controller.dart';

class DashboardBookDetailsView extends StatelessWidget {
  const DashboardBookDetailsView({super.key, required this.controller});
  final DashboardBookDetailsController controller;
  @override
  Widget build(BuildContext context) {
    return BdayaMultiLoadableAreaWrapper(
      areas: [controller.defaultArea, controller.relatedArea],
      builder: (context) {
        final library = controller
            .shellController.libraryDetailsController.libraryDetailsRx
            .of(context);
        final details = controller.bookDetails.of(context);
        final entry = controller.relatedEntry.of(context);
        if (details == null) {
          return const SizedBox.shrink();
        }
        return ListView(
          children: [
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                ElevatedButton.icon(
                  onPressed: () => GoRouter.of(context)
                      .goNamed(AppRouteNames.kBookDetails, pathParameters: {
                    kBookId: details.id!,
                  }),
                  icon: const Icon(Icons.book),
                  label: const AppText("Go to public page"),
                ),
                if (library?.type == BdayaBLCIRMOrgType.number1 ||
                    library?.type == BdayaBLCIRMOrgType.number2) ...[
                  ElevatedButton.icon(
                    onPressed: () => controller.startUpdateProcess(context),
                    icon: const Icon(Icons.edit_document),
                    label: const AppText("Update"),
                  ),
                  ElevatedButton.icon(
                    onPressed: () => controller.startDeleteProcess(context),
                    icon: const Icon(Icons.delete),
                    label: const AppText("Delete"),
                  ),
                ],
                if (entry == null)
                  ElevatedButton.icon(
                    icon: const Icon(Icons.create),
                    onPressed: () =>
                        controller.startRegisterForSelfFlow(context),
                    label: const AppText("Register for my library"),
                  ),
                if (entry != null) ...[
                  if ((entry.availableQuantity ?? 0) > 0) ...[
                    ElevatedButton.icon(
                      label: const AppText("Create Loan"),
                      onPressed: () => controller.startCreateLoanFlow(
                        context,
                        entry: entry,
                      ),
                      icon: const Icon(Icons.credit_score),
                    ),
                    ElevatedButton.icon(
                      label: const AppText("Transfer"),
                      onPressed: () => controller.startTransferFlow(
                        context,
                        entry: entry,
                      ),
                      icon: const Icon(Icons.double_arrow),
                    ),
                  ],
                  ElevatedButton.icon(
                    icon: const Icon(Icons.edit),
                    onPressed: () => controller.startOwnEntryUpdateFlow(
                      context,
                      entry: entry,
                    ),
                    label: const AppText("Update available count"),
                  ),
                ],
              ],
            ),
            BookCard(
              info: details.info,
              metadataConfig: controller.apiService.metadata.of(context),
            ),
            if (entry != null) ...[
              const Divider(),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const AppText(
                        'Statistics',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: [
                          LabeledInfo(
                            labelText: 'Total Owned',
                            value: entry.ownedQuantity?.toString(),
                          ),
                          LabeledInfo(
                            labelText: 'Loaned',
                            value: entry.loanedQuantity?.toString(),
                          ),
                          LabeledInfo(
                            backgroundColor: (entry.availableQuantity ?? 0) > 0
                                ? Theme.of(context).colorScheme.primaryContainer
                                : null,
                            labelText: 'Available',
                            value: entry.availableQuantity?.toString(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
            const Divider(),
            LoansWidget(
              filterController: controller.filterController,
              pagingController: controller.loansController,
              onReturn: (context, entry) async {
                final isReturned =
                    await controller.shellController.startReturnLoanFlow(
                  context,
                  entry: entry,
                  area: controller.defaultArea,
                  logger: controller.logger,
                );
                if (isReturned) {
                  controller.loansController.refresh();
                  controller.bookIdRx.update((p0) => p0);
                }
              },
              showBookDetails: false,
              canScroll: false,
            ),
          ],
        );
      },
    );
  }
}
