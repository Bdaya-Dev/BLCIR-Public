import 'package:cbirm_flutter/common.dart';
import '../controller.dart';

import 'filter_viewer.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({
    super.key,
    required this.controller,
  });

  final LibrariesController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              Text(
                'All Tenants',
                style: context.textTheme.displaySmall?.copyWith(
                  color: context.colorScheme.primary,
                ),
              ),
              const SizedBox(width: 16.0),
              Flexible(
                flex: 4,
                child: Container(
                  constraints: const BoxConstraints(
                    maxWidth: 256,
                    maxHeight: 42.0,
                  ),
                  child: TextField(
                    controller: controller.textController,
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
                        onPressed: () async {
                          await showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                child: ConstrainedBox(
                                  constraints: const BoxConstraints(
                                    maxHeight: 400,
                                    maxWidth: 600,
                                  ),
                                  child: FilterViewer(
                                    controller: controller,
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        icon: const Icon(Icons.filter_alt),
                      ),
                    ),
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
