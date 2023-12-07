import 'package:doctors/core/helper/extensions.dart';
import 'package:doctors/core/routing/routes.dart';
import 'package:doctors/features/splash/widgets/animated_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/theme/images/app_images.dart';
import 'widgets/animated_app_name.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  SplashViewState createState() => SplashViewState();
}

class SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1300),
    );

    // Trigger the animation when the screen is opened
    _animationController.forward();

    // Optionally, you can add listeners or other configurations here
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        // After the animations are complete, navigate to the onboarding screen
        context.pushReplacementNamed(Routes.onboardingScreen);
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              SvgPicture.asset(
                AppImages.splashBackground,
                width: double.infinity,
                height: double.infinity,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedLogo(controller: _animationController),
                  SizedBox(width: 5.w),
                  AnimatedAppName(controller: _animationController),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
