import 'package:cbirm_flutter/common.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key, this.width, this.height});
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Assets.images.logo.image(
      width: width,
      height: height,
    );
  }
}
