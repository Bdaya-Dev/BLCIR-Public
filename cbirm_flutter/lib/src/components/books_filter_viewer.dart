import 'package:cbirm_flutter/common.dart';

class FilterViewer extends StatelessWidget {
  const FilterViewer({
    super.key,
    required this.controller,
  });

  final MeiliBooksSearch controller;

  @override
  Widget build(BuildContext context) {
    final facetResults = controller.bookFacetResults.of(context);
    final entries = facetResults.entries.toList();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Builder(
            builder: (context) {
              final currentFilterByFacets =
                  controller.filterByFacets.of(context);
              return ElevatedButton.icon(
                icon: const Icon(Icons.clear_all),
                onPressed: currentFilterByFacets.isEmpty ||
                        currentFilterByFacets.values.every((f) => f.isEmpty)
                    ? null
                    : () {
                        controller.filterByFacets.update((p0) => p0..clear());
                      },
                label: const AppText("Clear All Filters"),
              );
            },
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemCount: entries.length,
            itemBuilder: (context, index) {
              final e = entries[index];
              return SingleFacetGroup(
                propertyName: e.key,
                distribution: e.value,
                controller: controller,
              );
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
          ),
        ),
      ],
    );
  }
}

class SingleFacetGroup extends StatelessWidget {
  const SingleFacetGroup({
    super.key,
    required this.propertyName,
    required this.distribution,
    required this.controller,
  });
  final String propertyName;
  final Map<String, int> distribution;
  final MeiliBooksSearch controller;
  String getDisplayPropertyName() {
    switch (propertyName) {
      case "Info.Metadata.SubjectHeadings":
        return "Subject Headings";
      case "Info.Metadata.PublishYear":
        return "Publish Year";
      default:
        return propertyName;
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentFilter = controller.filterByFacets.of(context);
    final currentPropertyFilter = currentFilter[propertyName];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: [
          ListTile(
            leading: IconButton(
              onPressed:
                  currentPropertyFilter == null || currentPropertyFilter.isEmpty
                      ? null
                      : () {
                          controller.filterByFacets.update((map) {
                            var prev = map[propertyName] ??= {};
                            prev.clear();
                            return map;
                          });
                        },
              icon: const Icon(Icons.clear),
            ),
            title: AppText(
              getDisplayPropertyName(),
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ...distribution.entries.map(
            (e) => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Checkbox(
                  value: currentPropertyFilter == null
                      ? false
                      : currentPropertyFilter.contains(e.key),
                  onChanged: (value) {
                    controller.filterByFacets.update((map) {
                      var prev = map[propertyName] ??= {};
                      if (value == true) {
                        prev.add(e.key);
                      } else {
                        prev.remove(e.key);
                      }
                      return map;
                    });
                  },
                ),
                AppText('${e.key} (${e.value})'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
