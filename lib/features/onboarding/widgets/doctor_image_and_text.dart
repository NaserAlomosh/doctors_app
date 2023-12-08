import 'package:doctors/core/theme/images/app_images.dart';
import 'package:doctors/core/theme/styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      ////`
      children: [
        Center(
          child: SvgPicture.asset(
            AppImages.logoLowOpacitySvg,
          ),
        ),
        Center(
          child: Container(
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white.withOpacity(0.0),
                ],
                stops: const [0.14, 0.39],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            child: Image.asset(
              AppImages.doctorImagePng,
            ),
          ),
        ),
        Positioned(
          bottom: 18.h,
          left: 0,
          right: 0,
          child: Text(
            'Best Doctor\nAppointment App',
            textAlign: TextAlign.center,
            style: AppTextStyles.font32BlueBold.copyWith(height: 1.2),
          ),
        ),
      ],
    );
  }
}
