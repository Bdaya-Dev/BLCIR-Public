import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';

class BookCard extends StatelessWidget {
  const BookCard({
    super.key,
    required this.info,
    required this.metadataConfig,
    this.actions = const [],
  });

  final BdayaBLCIRMStateDocumentInfoDto? info;
  final List<BdayaBLCIRMStateDocumentMetadataDefDto> metadataConfig;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                AppText(
                  info?.title ?? '-',
                  style: const TextStyle(
                    fontSize: 24,
                  ),
                ),
                ...actions,
              ],
            ),
            const Divider(),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                ...?info?.authors?.map(
                  (p0) => LabeledInfo(
                    labelText: "Author",
                    value: p0.info?.name,
                    backgroundColor: Colors.blueGrey,
                    headerStyle: const TextStyle(color: Colors.white),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                ...metadataConfig.map(
                  (e) {
                    final metadataId = e.id!;
                    final value = info?.metadata?[metadataId]?.toString();
                    if (value.isNullOrEmpty) {
                      return null;
                    }
                    return LabeledInfo(
                      labelText: e.title ?? metadataId,
                      value: value,
                      headerStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  },
                ).whereNotNull(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
