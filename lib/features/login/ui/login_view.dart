import 'package:doctors/core/theme/strings/app_string.dart';
import 'package:doctors/core/theme/styles/app_text_style.dart';
import 'package:doctors/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/widgets/app_text_button.dart';
import 'widgets/already_have_account_text.dart';
import 'widgets/terms_and_conditions_text.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isObscureText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                AppStringEN.welcomeBack,
                style: AppTextStyles.font26BlueBold,
              ),
              verticalSpace(8),
              Text(
                AppStringEN.descrptionLogin,
                style: AppTextStyles.font16GrayRegular,
              ),
              verticalSpace(36),
              Form(
                child: Column(
                  children: [
                    const AppTextFormField(hintText: AppStringEN.email),
                    verticalSpace(18),
                    AppTextFormField(
                      hintText: AppStringEN.password,
                      isObscureText: isObscureText,
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isObscureText = !isObscureText;
                          });
                        },
                        child: Icon(
                          isObscureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                    ),
                    verticalSpace(24),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        AppStringEN.forgotPassword,
                        style: AppTextStyles.font13BlueRegular,
                      ),
                    ),
                    verticalSpace(40),
                    AppTextButton(
                      buttonText: AppStringEN.login,
                      textStyle: AppTextStyles.font16WhiteSemiBold,
                      onPressed: () {},
                    ),
                    verticalSpace(16),
                    const TermsAndConditionsText(),
                    verticalSpace(60),
                    const AlreadyHaveAccountText(),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
