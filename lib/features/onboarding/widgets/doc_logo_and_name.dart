import 'package:doctors/core/theme/images/app_images.dart';
import 'package:doctors/core/theme/strings/app_string.dart';
import 'package:doctors/core/theme/styles/app_text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppImages.logoSvg),
        SizedBox(width: 10.w),
        Text(
          AppString.appName,
          style: AppTextStyle.font24Blac700Weight,
        ),
      ],
    );
  }
}
