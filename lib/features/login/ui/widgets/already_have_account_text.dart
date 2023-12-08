import 'package:doctors/core/theme/strings/app_string.dart';
import 'package:doctors/core/theme/styles/app_text_style.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: AppStringEN.dontHaveAnAccount,
            style: AppTextStyles.font13DarkBlueRegular,
          ),
          TextSpan(
            text: AppStringEN.signUp,
            style: AppTextStyles.font13BlueSemiBold,
          ),
        ],
      ),
    );
  }
}
