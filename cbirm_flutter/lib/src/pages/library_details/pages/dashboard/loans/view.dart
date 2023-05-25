import 'package:cbirm_flutter/common.dart';
import 'package:cbirm_flutter/src/pages/library_details/pages/dashboard/_components/loans_widget.dart';
import 'controller.dart';

class DashboardLoansView extends StatelessWidget {
  const DashboardLoansView({super.key, required this.controller});
  final DashboardLoansController controller;
  @override
  Widget build(BuildContext context) {
    return BdayaLoadableAreaWrapper.custom(
      area: controller.defaultArea,
      customBuilder: (context, state) {
        return LoansWidget(
          filterController: controller.searchController,
          pagingController: controller.paginationController,
          showBookDetails: true,
          onReturn: state.isLoading
              ? null
              : (context, entry) async {
                  final returnResult =
                      await controller.shellController.startReturnLoanFlow(
                    context,
                    entry: entry,
                    area: controller.defaultArea,
                    logger: controller.logger,
                  );
                  if (returnResult) {
                    controller.paginationController.refresh();
                  }
                },
          canScroll: true,
        );
      },
    );
  }
}
