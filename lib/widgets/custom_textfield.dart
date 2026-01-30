import 'package:flutter/material.dart';
import 'package:ismartfund_mobile/theme/app_colors.dart';
import 'package:ismartfund_mobile/theme/text_styles.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final int maxLines;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.maxLines = 1,
  });

  OutlineInputBorder _border(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(color: color, width: 1.4),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      maxLines: maxLines,
      style: const TextStyle(fontSize: 14, color: Colors.white),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.dark,

        hintText: hintText,
        hintStyle: globalTextStyle(
          fontSize: 12,
          color: AppColors.white.withValues(alpha: 0.5),
        ),

        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,

        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),

        enabledBorder: _border(AppColors.primary.withOpacity(0.6)),
        focusedBorder: _border(AppColors.secondaryColor),
        errorBorder: _border(Colors.redAccent),
        focusedErrorBorder: _border(Colors.redAccent),
      ),
    );
  }
}
