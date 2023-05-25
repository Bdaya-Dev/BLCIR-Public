import 'package:cbirm_flutter/common.dart';
import 'books_filter_viewer.dart';

class BooksSearchbar extends StatelessWidget {
  const BooksSearchbar({
    super.key,
    required this.controller,
    required this.title,
    this.actions = const [],
  });

  final MeiliBooksSearch controller;
  final String title;
  final List<Widget> actions;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16,
      runSpacing: 16,
      children: [
        Text(
          title,
          style: context.textTheme.displaySmall?.copyWith(
            color: context.colorScheme.primary,
          ),
        ),
        ...actions,
        Container(
          constraints: const BoxConstraints(
            maxWidth: 620,
            maxHeight: 42.0,
          ),
          child: TextField(
            controller: controller.searchController,
            decoration: InputDecoration(
              icon: IconButton(
                onPressed: controller.manualRefresh,
                icon: const Icon(Icons.refresh),
              ),
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
                onPressed: () async => await showDialog(
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
                ),
                icon: const Icon(Icons.filter_alt),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
