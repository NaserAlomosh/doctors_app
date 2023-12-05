import 'package:doctors/core/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyle {
  static TextStyle font24Blac700Weight = TextStyle(
    fontSize: 24.sp,
    color: Colors.black,
    fontWeight: FontWeight.w700,
  );
  static TextStyle font32Blue700Weight = TextStyle(
    fontSize: 32.h,
    color: AppColors.primaryBlue,
    fontWeight: FontWeight.w700,
  );
  static TextStyle font13GrayRegular = TextStyle(
    fontSize: 10.sp,
    color: AppColors.grey,
    fontWeight: FontWeight.normal,
  );
  static TextStyle font16white500Weight = TextStyle(
    fontSize: 18.sp,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );
}
