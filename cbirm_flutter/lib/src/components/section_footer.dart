import 'package:cbirm_flutter/common.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Assets.images.whiteLogo.image(
                  width: 300,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Expanded(
                child: Wrap(
                  spacing: 32.0,
                  runSpacing: 16.0,
                  alignment: WrapAlignment.spaceEvenly,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppFooterItem(
                            label: S.of(context).aboutUs,
                          ),
                          const AppFooterItem(
                            label: "Responsabilities",
                          ),
                          const AppFooterItem(
                            label: "Our Services",
                          ),
                          const AppFooterItem(
                            label: "Contact",
                          ),
                        ]),
                    const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppFooterItem(
                            label: "Disclaimer",
                          ),
                          AppFooterItem(
                            label: "Testimonials",
                          ),
                          AppFooterItem(
                            label: "Privacy Policy",
                          ),
                          AppFooterItem(
                            label: "Terms of Service",
                          ),
                        ]),
                    const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppFooterItem(
                            label: "Disclaimer",
                          ),
                          AppFooterItem(
                            label: "Testimonials",
                          ),
                          AppFooterItem(
                            label: "Privacy Policy",
                          ),
                          AppFooterItem(
                            label: "Terms of Service",
                          ),
                        ]),
                    const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppFooterItem(
                            label: "Disclaimer",
                          ),
                          AppFooterItem(
                            label: "Testimonials",
                          ),
                          AppFooterItem(
                            label: "Privacy Policy",
                          ),
                          AppFooterItem(
                            label: "Terms of Service",
                          ),
                        ]),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AppFooterItem extends StatelessWidget {
  const AppFooterItem({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Text(
        label,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
