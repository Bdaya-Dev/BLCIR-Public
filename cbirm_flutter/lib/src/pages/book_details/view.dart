import 'package:cbirm_flutter/common.dart';
import 'package:go_router/go_router.dart';

import 'controller.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.controller});
  final BookDetailsController controller;
  @override
  Widget build(BuildContext context) {
    final id = controller.bookId.of(context);
    if (id == null) {
      return const SizedBox.shrink();
    }
    return BdayaLoadableAreaWrapper(
      area: controller.defaultArea,
      builder: (context) {
        final details = controller.bookDetails.of(context);
        final info = details?.info;
        final metadataConfig = controller.apiService.metadata.of(context);
        if (details == null) {
          return const CustomNotFoundWidget();
        }
        final related = details.entries?.toList() ?? const [];
        return ListView(
          children: [
            BookCard(
              info: info,
              metadataConfig: metadataConfig,
              actions: [
                IconButton(
                  onPressed: () => controller.bookId.update((p0) => p0),
                  icon: const Icon(Icons.refresh),
                )
              ],
            ),
            const SizedBox(height: 8),
            if (related.isNotEmpty)
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const AppText(
                        'Found in Libraries',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      const Divider(),
                      ...related.map(
                        (e) => ListTile(
                          onTap: () {
                            GoRouter.of(context).goNamed(
                              AppRouteNames.kLibraryDetails,
                              pathParameters: {
                                kLibraryId: e.tenantId!,
                              },
                              queryParameters: {
                                kBookId: controller.bookId.$,
                              },
                            );
                          },
                          title: AppText(
                            e.name ?? '-',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Wrap(
                            spacing: 16,
                            runSpacing: 8,
                            children: [
                              LabeledInfo(
                                labelText: 'Total Owned',
                                value: e.ownedQuantity?.toString(),
                              ),
                              LabeledInfo(
                                labelText: 'Loaned',
                                value: e.loanedQuantity?.toString(),
                              ),
                              LabeledInfo(
                                backgroundColor: (e.availableQuantity ?? 0) > 0
                                    ? Theme.of(context)
                                        .colorScheme
                                        .primaryContainer
                                    : null,
                                labelText: 'Available',
                                value: e.availableQuantity?.toString(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
