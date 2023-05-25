import 'package:cbirm_flutter/common.dart';
import 'package:go_router/go_router.dart';

class LibraryDialog extends StatelessWidget {
  const LibraryDialog({super.key});
  static Future<void> show(
    BuildContext context,
  ) async {
    await showDialog(
      context: context,
      builder: (context) {
        return const LibraryDialog();
      },
      barrierDismissible: false,
      useRootNavigator: true,
      barrierColor: Colors.transparent,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Material(
          color: Colors.transparent,
          child: GestureDetector(
            onTap: () {},
            child: Center(
              child: Container(
                clipBehavior: Clip.antiAlias,
                constraints: const BoxConstraints(
                  maxWidth: 512,
                  maxHeight: 512,
                ),
                decoration: BoxDecoration(
                  color: theme.dialogBackgroundColor,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 2.0,
                      spreadRadius: 4.0,
                      color: Colors.grey,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                      ),
                      child: AppText(
                        "Library Details",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                          color: theme.colorScheme.background,
                        ),
                      ),
                    ),
                    Expanded(
                      child: LayoutBuilder(builder: (context, constraints) {
                        return SingleChildScrollView(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Wrap(
                                  alignment: WrapAlignment.spaceBetween,
                                  spacing: 8.0,
                                  runSpacing: 8.0,
                                  children: [
                                    Assets.images.logo.image(
                                      width: 200,
                                      fit: BoxFit.fitHeight,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        AppText(
                                          "Alex Library",
                                          style: TextStyle(
                                              color: theme.colorScheme.primary,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const AppText("www.alexlibrary.com"),
                                        const AppText(
                                            "010065872660 - 010065872665"),
                                        const AppText(
                                            "Egypt. Alexandria, etc ..."),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: AppText(
                                        "Library description, Library description,Library descriptionLibrary description Library description Library description Library description Library description" *
                                            10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: double.maxFinite,
                                child: ElevatedButton(
                                  onPressed: () {
                                    GoRouter.of(context).goNamed(
                                        AppRouteNames.kLibraryDetails,
                                        pathParameters: {kLibraryId: "1"});
                                  },
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                      theme.colorScheme.primary,
                                    ),
                                  ),
                                  child: AppText(
                                    "Find a Book",
                                    style: TextStyle(
                                      color: theme.colorScheme.background,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
