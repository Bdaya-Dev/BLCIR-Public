import 'package:cbirm_flutter/common.dart';

class AppNetworkImage extends StatelessWidget {
  const AppNetworkImage({
    Key? key,
    this.url,
    this.alt,
    this.width,
    this.height,
    this.fit,
  }) : super(key: key);

  final String? url;
  final String? alt;
  final double? width;
  final double? height;
  final BoxFit? fit;
  @override
  Widget build(BuildContext context) {
    return url == null
        ? SizedBox(
            height: height,
            width: width,
            child: alt == null ? null : AppText(alt!),
          )
        : Image.network(
            url!,
            width: width,
            height: height,
            fit: fit,
            errorBuilder: (context, error, stackTrace) {
              if (alt != null) {
                return AppText(alt!);
              } else {
                return const SizedBox.shrink();
              }
            },
          );
  }
}
