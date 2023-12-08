import 'package:doctors/core/theme/strings/app_string.dart';
import 'package:doctors/core/theme/styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/doc_logo_and_name.dart';
import 'widgets/doctor_image_and_text.dart';
import 'widgets/get_started_button.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30.h),
              const DocLogoAndName(),
              SizedBox(height: 30.h),
              const DoctorImageAndText(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 36.w),
                child: Column(
                  children: [
                    Text(
                      AppString.descrptionOnbodrding,
                      style: AppTextStyle.font13GrayRegular,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 40.h),
                    const GetStartedButton(),
                  ],
                ),
              ),
              SizedBox(height: 5.h),
            ],
          ),
        ),
      ),
    );
  }
}
