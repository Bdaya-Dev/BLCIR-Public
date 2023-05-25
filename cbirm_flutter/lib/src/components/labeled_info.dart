import 'package:cbirm_flutter/common.dart';

class LabeledInfo extends StatelessWidget {
  const LabeledInfo({
    super.key,
    required this.labelText,
    required this.value,
    this.valueSpan,
    this.headerStyle,
    this.style,
    this.backgroundColor,
    this.onTap,
  });

  final String labelText;
  final String? value;
  final TextSpan? valueSpan;
  final TextStyle? headerStyle;
  final TextStyle? style;
  final Color? backgroundColor;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    final actualHeaderStyle = headerStyle ??
        const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        );
    if (value == null && valueSpan == null) {
      return const SizedBox.shrink();
    }
    return RawChip(
      backgroundColor: backgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      label: Text.rich(TextSpan(
        children: [
          TextSpan(text: labelText, style: actualHeaderStyle),
          TextSpan(text: ': ', style: actualHeaderStyle),
          valueSpan ?? TextSpan(text: value, style: style),
        ],
      )),
      onPressed: onTap,
    );
  }
}
