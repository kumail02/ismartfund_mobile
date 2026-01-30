import 'package:flutter/material.dart';
import 'package:ismartfund_mobile/theme/text_styles.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color? color;
  final double? letterSpacing;
  final FontWeight? fontWeight;
  final TextDecoration? decoration;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  const CustomText({
    super.key,
    required this.text,
    required this.fontSize,
    this.color,
    this.letterSpacing,
    this.fontWeight,
    this.decoration,
    this.textAlign,
    this.maxLines,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: globalTextStyle(
        fontSize: fontSize,
        color: color,
        letterSpacing: letterSpacing,
        fontWeight: fontWeight,
        decoration: decoration,
      ),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
