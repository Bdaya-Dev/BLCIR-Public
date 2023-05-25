import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';

class PersonCard extends StatelessWidget {
  const PersonCard({
    super.key,
    required this.info,
    required this.id,
    this.actions = const [],
  });

  final String id;
  final BdayaBLCIRMStatePersonInfoDto info;
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
                  info.name ?? '-',
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
                LabeledInfo(
                  labelText: "Country",
                  value: info.countryCodeIso3166,
                ),
                LabeledInfo(
                  labelText: "National Id",
                  value: info.nationalId,
                ),
                LabeledInfo(
                  labelText: "Date Of Birth",
                  value: info.birthday?.toDate().toString(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
