import 'package:cbirm_flutter/common.dart';
import 'package:url_launcher/link.dart';
import 'controller.dart';

class AboutUsView extends StatelessWidget {
  const AboutUsView({super.key, required this.controller});
  final AboutUsController controller;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: Column(
            children: [
              AppText(
                "اتحاد مكتبات بلوك تشين",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(height: 8),
              AppText(
                "Blockchain Libraries Consortium",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const Divider(),
              Link(
                uri: Uri.parse("https://bdaya-dev.com"),
                target: LinkTarget.blank,
                builder: (context, onTap) => ListTile(
                  onTap: onTap,
                  leading: Assets.images.bdayaLogo.image(height: 64, width: 64),
                  title: Text.rich(
                    TextSpan(children: [
                      const TextSpan(text: "Designed & Developed by "),
                      TextSpan(
                        text: "Bdaya Development",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ]),
                  ),
                ),
              ),
              const Divider(),
              AppText(
                "Under supervision of",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const ListTile(
                title: AppText("D/ Soha Elwan"),
              ),
              const ListTile(
                title: AppText("Prof/ Mahmoud Elgendy"),
              ),
              const ListTile(
                title: AppText("D/ Taha Elfaramawy"),
              ),
              // Spacer(),
              // Align(
              //   alignment: Alignment.bottomCenter,
              //   child: AppFooter(),
              // ),
            ],
          ),
        );
      },
    );
  }
}
