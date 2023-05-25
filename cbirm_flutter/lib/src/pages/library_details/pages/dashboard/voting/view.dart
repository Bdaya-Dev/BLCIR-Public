import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'components/proposal_viewer.dart';
import 'controller.dart';

class DashboardVotingView extends StatelessWidget {
  const DashboardVotingView({super.key, required this.controller});
  final DashboardVotingController controller;
  @override
  Widget build(BuildContext context) {
    final details = controller
        .shellController.libraryDetailsController.libraryDetailsRx
        .of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: CustomScrollView(
            slivers: [
              if (details?.type == BdayaBLCIRMOrgType.number2) ...[
                const SliverToBoxAdapter(
                  child: AppText(
                    'Pending Tenant Votes',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 300),
                    child: TextField(
                      controller: controller.tenantSearchController,
                      decoration: InputDecoration(
                        hintText: 'Search',
                        contentPadding: const EdgeInsets.all(0.0),
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        fillColor: context.colorScheme.primary.withOpacity(0.1),
                        suffixIcon: IconButton(
                          onPressed: () =>
                              controller.tenantSearchController.clear(),
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                    ),
                  ),
                ),
                PagedSliverList<int,
                    ResultContainer<BdayaBLCIRMTenantsAppTenantDto>>(
                  shrinkWrapFirstPageIndicators: true,
                  pagingController: controller.tenantVotesPaginationController,
                  builderDelegate: PagedChildBuilderDelegate(
                    itemBuilder: (context, item, index) {
                      final String? name = item.original["_formatted"]
                              ?['Name'] ??
                          item.object.name;
                      return BdayaLoadableAreaWrapper.custom(
                        area: controller.actionArea,
                        customBuilder: (context, area) {
                          return ListTile(
                            leading: area.isLoading
                                ? const CircularProgressIndicator.adaptive()
                                : PopupMenuButton<
                                    void Function(BuildContext context)>(
                                    itemBuilder: (context) {
                                      return [
                                        PopupMenuItem(
                                          child: const ListTile(
                                            iconColor: Colors.green,
                                            leading: Icon(Icons.check),
                                            title: AppText('Accept'),
                                          ),
                                          value: (context) =>
                                              controller.voteTenant(
                                            context,
                                            tenant: item.object,
                                            result: true,
                                          ),
                                        ),
                                        PopupMenuItem(
                                          child: const ListTile(
                                            iconColor: Colors.red,
                                            leading: Icon(Icons.clear),
                                            title: AppText('Reject'),
                                          ),
                                          value: (context) =>
                                              controller.voteTenant(
                                            context,
                                            tenant: item.object,
                                            result: false,
                                          ),
                                        ),
                                      ];
                                    },
                                    onSelected: (value) => value(context),
                                  ),
                            title: HighlightedText(
                              original: name ?? '',
                              preTag: '<em>',
                              postTag: '</em>',
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
              SliverToBoxAdapter(
                child: Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    const AppText(
                      'Pending Transaction Votes',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () => controller
                          .transactionVotesPaginationController
                          .refresh(),
                      icon: const Icon(Icons.refresh),
                    ),
                  ],
                ),
              ),
              PagedSliverList<int, ProposalContainer>(
                pagingController:
                    controller.transactionVotesPaginationController,
                shrinkWrapFirstPageIndicators: true,
                builderDelegate: PagedChildBuilderDelegate(
                  itemBuilder: (context, proposalContainer, index) =>
                      ProposalViewer(
                    proposalContainer: proposalContainer,
                    controller: controller,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
