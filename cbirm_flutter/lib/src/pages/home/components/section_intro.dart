part of '../view.dart';

class SectionIntro extends StatelessWidget {
  const SectionIntro({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final PublicHomeController controller;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Positioned.fill(
        //   child: Container(
        //     color: Colors.red,
        //   ),
        // ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 8 * 4, bottom: 8 * 4),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 600),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Blockchain Libraries Consortium for Information Retrieval',
                    style: context.textTheme.displayLarge?.copyWith(
                      color: context.colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 8 * 2),
                  Text(
                    '(BLCIR) A permissioned blockchain library system',
                    style: context.textTheme.displaySmall?.copyWith(
                      color: context.colorScheme.secondary,
                    ),
                  ),
                  const SizedBox(height: 8 * 4),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: context.colorScheme.primary,
                      foregroundColor: context.colorScheme.onPrimary,
                    ),
                    onPressed: () {
                      GoRouter.of(context).go(
                        controller.goRouterService
                            .namedLocation(AppRouteNames.kBooks)
                            .toString(),
                      );
                    },
                    child: const AppText('Find a book'),
                  ),
                  const SizedBox(height: 8 * 1),
                  Link(
                    uri: controller.goRouterService
                        .namedLocation(AppRouteNames.kNewLibrary),
                    builder: (context, followLink) => ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: context.colorScheme.secondary,
                        foregroundColor: context.colorScheme.onSecondary,
                      ),
                      onPressed: followLink,
                      child: const AppText(
                        'Add your library',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
