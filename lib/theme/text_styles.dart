import 'package:flutter/material.dart';
import 'package:ismartfund_mobile/theme/app_colors.dart';

TextStyle globalTextStyle({
  required double fontSize,
  Color? color,
  double? letterSpacing,
  FontWeight? fontWeight,
  TextDecoration? decoration,
}) => TextStyle(
  color: color ?? AppColors.dark,
  fontSize: fontSize,
  fontWeight: fontWeight ?? FontWeight.w800,
  fontFamily: 'Aptos',
  decoration: decoration ?? TextDecoration.none,
);
