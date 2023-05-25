import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class LoansWidget extends StatelessWidget {
  const LoansWidget({
    super.key,
    required this.filterController,
    required this.pagingController,
    required this.onReturn,
    required this.showBookDetails,
    required this.canScroll,
  });
  final bool canScroll;
  final TextEditingController filterController;
  final PagingController<int,
      ResultContainer<BdayaBLCIRMStateFullLoanDetailsDto>> pagingController;
  final bool showBookDetails;
  final void Function(
    BuildContext context,
    BdayaBLCIRMStateFullLoanDetailsDto entry,
  )? onReturn;

  @override
  Widget build(BuildContext context) {
    final list =
        PagedListView<int, ResultContainer<BdayaBLCIRMStateFullLoanDetailsDto>>(
      shrinkWrap: !canScroll,
      physics: canScroll ? null : const NeverScrollableScrollPhysics(),
      pagingController: pagingController,
      builderDelegate: PagedChildBuilderDelegate(
        itemBuilder: (context, item, index) {
          final formatted =
              item.original['_formatted'] as Map<String, dynamic>?;
          final formattedName =
              '${formatted?['Person']['Info']['Name'] ?? item.object.person?.info?.name}';
          return ListTile(
            isThreeLine: true,
            leading: PopupMenuButton<void Function(BuildContext context)>(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: const AppText("Return"),
                  value: (context) => onReturn?.call(
                    context,
                    item.object,
                  ),
                )
              ],
              onSelected: (value) => value(context),
            ),
            title: HighlightedText(
              preTag: '<em>',
              postTag: '</em>',
              original: item.object.person?.info?.countryCodeIso3166 == null
                  ? formattedName
                  : '[${item.object.person?.info?.countryCodeIso3166}] $formattedName',
              textStyle: const TextStyle(
                fontSize: 20,
              ),
              highlightedStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                decoration: TextDecoration.underline,
              ),
            ),
            subtitle: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                if (showBookDetails)
                  LabeledInfo(
                    labelText: "Resource",
                    value: null,
                    valueSpan: highlightedTextToSpan(
                      formatted?['Document']?['Info']?['Title'] ??
                          item.object.document?.info?.title ??
                          '',
                      preTag: '<em>',
                      postTag: '</em>',
                      highlightedStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    backgroundColor:
                        Theme.of(context).colorScheme.primaryContainer,
                  ),
                LabeledInfo(
                  labelText: "National Id",
                  value: formatted?['Person']['Info']['NationalId'] ??
                      item.object.person?.info?.nationalId,
                ),
                LabeledInfo(
                  labelText: "Date Of Birth",
                  value: formatted?['Person']['Info']['Birthday'] ??
                      item.object.person?.info?.birthday?.toDate().toString(),
                ),
                LabeledInfo(
                  labelText: "Loaned Copies",
                  // backgroundColor:
                  //     Theme.of(context).colorScheme.primaryContainer,
                  value: item.object.physicalCopies?.toString(),
                ),
                LabeledInfo(
                  labelText: "Loaned At",
                  value: item.object.creationTime?.toIso8601String(),
                ),
                LabeledInfo(
                  labelText: "Returned Copies",
                  // backgroundColor:
                  //     Theme.of(context).colorScheme.primaryContainer,
                  value: item.object.returnedCopies?.toString(),
                ),
                LabeledInfo(
                  labelText: "Remaining Copies",
                  backgroundColor:
                      Theme.of(context).colorScheme.primaryContainer,
                  value: item.object.remainingCopies?.toString(),
                ),
                LabeledInfo(
                  labelText: "Planned Return Date",
                  value: item.object.returnDate?.toIso8601String(),
                ),
                LabeledInfo(
                  labelText: "Actual Return Date",
                  value: item.object.actualReturnDate?.toIso8601String(),
                ),
              ],
            ),
          );
        },
        firstPageErrorIndicatorBuilder: (context) {
          final error = pagingController.error;
          return FirstPageExceptionIndicator(
            title: 'Something went wrong',
            message: error.toString(),
            onTryAgain: pagingController.retryLastFailedRequest,
          );
        },
      ),
    );
    return Column(
      mainAxisSize: canScroll ? MainAxisSize.max : MainAxisSize.min,
      children: [
        Wrap(
          spacing: 8,
          runSpacing: 8,
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            const AppText(
              'Loans',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            SizedBox(
              width: 300,
              child: TextField(
                controller: filterController,
                decoration: InputDecoration(
                  labelText: 'Filter',
                  hintText: 'Search',
                  contentPadding: const EdgeInsets.all(0.0),
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  fillColor: context.colorScheme.primary.withOpacity(0.1),
                  icon: IconButton(
                    onPressed: () => pagingController.refresh(),
                    icon: const Icon(Icons.refresh),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () => filterController.clear(),
                    icon: const Icon(Icons.clear),
                  ),
                  // suffixIcon: IconButton(
                  //   onPressed: () async {
                  //     await showDialog(
                  //       context: context,
                  //       builder: (context) {
                  //         return Dialog(
                  //           child: ConstrainedBox(
                  //             constraints: const BoxConstraints(
                  //               maxHeight: 400,
                  //               maxWidth: 600,
                  //             ),
                  //             child: FilterViewer(
                  //               controller: controller,
                  //             ),
                  //           ),
                  //         );
                  //       },
                  //     );
                  //   },
                  //   icon: const Icon(Icons.filter_alt),
                  // ),
                ),
              ),
            )
          ],
        ),
        if (canScroll) Expanded(child: list) else list,
      ],
    );
  }
}
