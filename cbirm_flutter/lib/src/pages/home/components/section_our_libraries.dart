part of '../view.dart';

class SectionOurLibraries extends StatelessWidget {
  const SectionOurLibraries({
    super.key,
    required this.controller,
  });

  final PublicHomeController controller;

  @override
  Widget build(BuildContext context) {
    final allLibraries = controller.allLibraries.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Link(
          uri: Uri.parse(
            GoRouter.of(context).namedLocation(AppRouteNames.kLibraries),
          ),
          builder: (context, onTap) => InkWell(
            onTap: onTap,
            child: AppText(
              "Participant Libraries",
              style: context.textTheme.displaySmall?.copyWith(
                color: context.colorScheme.primary,
              ),
            ),
          ),
        ),
        ArrowedList(
          listHeight: 150,
          itemCount: allLibraries.length,
          effect: const WormEffect(
            type: WormType.thin,
          ),
          animatioDuration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          listBuilder: (scrollController) => ListView.builder(
            controller: scrollController,
            itemCount: allLibraries.length,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              final lib = allLibraries[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    GoRouter.of(context).go(
                      controller.goRouterService.namedLocation(
                        AppRouteNames.kLibraryDetails,
                        pathParameters: {
                          kLibraryId: lib.id!,
                        },
                      ).toString(),
                    );
                  },
                  child: AppNetworkImage(
                    url: lib.info?.logo,
                    alt: lib.name,
                    width: 100,
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
