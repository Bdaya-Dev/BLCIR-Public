import 'package:cbirm_flutter/common.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/link.dart';
import 'controller.dart';
part 'components/section_intro.dart';

part 'components/section_our_libraries.dart';

class PublicHomeView extends StatelessWidget {
  const PublicHomeView({
    super.key,
    required this.controller,
  });

  final PublicHomeController controller;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SectionIntro(controller: controller),
          Container(
            color: Colors.grey.withOpacity(0.2),
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: SectionOurLibraries(controller: controller),
          ),
        ],
      ),
    );
  }
}
