import 'package:doctors/core/theme/colors/app_colors.dart';
import 'package:doctors/core/theme/styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.primaryBlue,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16.0),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.lighterGray,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16.0),
            ),
        hintStyle: hintStyle ?? AppTextStyles.font14LightGrayRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
        fillColor: backgroundColor ?? AppColors.moreLightGray,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: AppTextStyles.font14DarkBlueMedium,
    );
  }
}
