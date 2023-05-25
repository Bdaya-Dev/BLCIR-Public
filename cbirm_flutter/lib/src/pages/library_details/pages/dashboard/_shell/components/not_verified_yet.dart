import 'package:cbirm_flutter/common.dart';

class NotVerifiedYet extends StatelessWidget {
  const NotVerifiedYet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: AppText(
        "Sorry, you can't access your organization until it's verified by a Trusted Authority",
        style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
