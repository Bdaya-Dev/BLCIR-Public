import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';
import 'package:cbirm_flutter/src/components/person_card.dart';
import 'package:cbirm_flutter/src/components/tenant_card.dart';
import 'package:go_router/go_router.dart';

import '../controller.dart';

class ProposalViewer extends StatelessWidget {
  const ProposalViewer({
    super.key,
    required this.proposalContainer,
    required this.controller,
  });

  final ProposalContainer proposalContainer;
  final DashboardVotingController controller;

  String proposalTypeToString(BdayaBLCIRMStateTransactionInfoDto info) {
    return switch (info) {
      BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto() =>
        'Transfer Documents',
      BdayaBLCIRMUpdateDocumentTransactionInfoDto() => 'Update Document',
      BdayaBLCIRMUpdateAuthorTransactionInfoDto() => 'Update Author',
      BdayaBLCIRMUpdatePersonTransactionInfoDto() => 'Update Person',
      BdayaBLCIRMDeletePersonTransactionInfoDto() => 'Delete Person/Author',
      _ => info.dollarType!
    };
  }

  Widget proposalTypeToWidget(
      BuildContext context, BdayaBLCIRMStateTransactionInfoDto info) {
    return switch (info) {
      BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto(
        targetTenant: final targetTenant,
        document: final document,
        // documentId: final documentId,
        // pricePerItem: final pricePerItem,
        // notes: final notes,
        quantity: final quantity,
      ) =>
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BookCard(
              info: document?.info,
              metadataConfig: controller.apiService.metadata.of(context),
            ),
            const Divider(),
            if (targetTenant != null)
              TenantCard(
                tenantDto: targetTenant,
              ),
            const Divider(),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                LabeledInfo(
                  labelText: "Quantity",
                  value: quantity?.toString(),
                ),
              ],
            ),
          ],
        ),
      BdayaBLCIRMUpdateDocumentTransactionInfoDto(
        documentId: final documentId,
        info: final info
      ) =>
        BookCard(
          actions: [
            IconButton(
              onPressed: () {
                GoRouter.of(context).goNamed(
                  AppRouteNames.kDashboardBookDetails,
                  pathParameters: {
                    kLibraryId: controller.shellController.libraryIdRx.$!,
                    kBookId: documentId!,
                  },
                );
              },
              tooltip: "Go to current document details",
              icon: const Icon(Icons.arrow_circle_right_sharp),
            ),
          ],
          info: info,
          metadataConfig: controller.apiService.metadata.of(context),
        ),
      BdayaBLCIRMUpdateAuthorTransactionInfoDto(
        authorId: final personId,
        info: final info
      ) =>
        PersonCard(
          info: info!,
          id: personId!,
        ),
      BdayaBLCIRMUpdatePersonTransactionInfoDto(
        personId: final personId,
        info: final info
      ) =>
        PersonCard(
          info: info!,
          id: personId!,
        ),
      BdayaBLCIRMDeletePersonTransactionInfoDto(
        personId: final personId,
        info: final info
      ) =>
        PersonCard(
          info: info!,
          id: personId!,
        ),
      _ => const SizedBox.shrink()
    };
  }

  @override
  Widget build(BuildContext context) {
    final item = proposalContainer.item;
    final votes = item.votes?.toList() ?? [];
    final relatedVoteEntry = votes.firstWhereOrNull(
      (element) =>
          element.tenantId == controller.shellController.libraryIdRx.$!,
    );
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 8,
              runSpacing: 8,
              children: [
                Tooltip(
                  message: item.completedAt == null
                      ? 'Not completed yet'
                      : 'Completed at ${item.completedAt!.toIso8601String()}',
                  child: AppText(
                    item.info == null ? '-' : proposalTypeToString(item.info!),
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: item.completionResult == true
                              ? Colors.green
                              : item.completionResult == false
                                  ? Colors.red
                                  : null,
                        ),
                  ),
                ),
                if (relatedVoteEntry == null) ...[
                  IconButton(
                    tooltip: "Accept",
                    onPressed: () => controller.voteAction(
                      context,
                      proposal: proposalContainer.item,
                      result: true,
                    ),
                    color: Colors.green,
                    icon: const Icon(Icons.check),
                  ),
                  IconButton(
                    tooltip: "Reject",
                    onPressed: () => controller.voteAction(
                      context,
                      proposal: proposalContainer.item,
                      result: false,
                    ),
                    color: Colors.red,
                    icon: const Icon(Icons.clear),
                  ),
                ] else ...[
                  if (relatedVoteEntry.result == true)
                    Tooltip(
                      message:
                          "You Accepted${relatedVoteEntry.notes == null ? '' : '\n${relatedVoteEntry.notes!}'}",
                      child: const Icon(
                        Icons.check_box,
                        color: Colors.green,
                      ),
                    )
                  else
                    Tooltip(
                      message:
                          "You Rejected${relatedVoteEntry.notes == null ? '' : '\n${relatedVoteEntry.notes!}'}",
                      child: const Icon(
                        Icons.cancel,
                        color: Colors.red,
                      ),
                    ),
                  const VerticalDivider(),
                  AppText(
                    "Accepted Votes: ${votes.where((element) => element.result == true).length}",
                  ),
                  const VerticalDivider(),
                  AppText(
                    "Rejected Votes: ${votes.where((element) => element.result != true).length}",
                  ),
                ],
              ],
            ),
            const Divider(),
            // AppText(
            //   "Transaction Contents",
            //   style: Theme.of(context).textTheme.titleLarge?.copyWith(
            //         color: Theme.of(context).colorScheme.primary,
            //       ),
            // ),
            Card(
              color: Theme.of(context).colorScheme.primaryContainer,
              child: proposalTypeToWidget(context, item.info!),
            ),
          ],
        ),
      ),
    );
  }
}
