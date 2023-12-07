import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/images/app_images.dart';

class AnimatedLogo extends StatelessWidget {
  final AnimationController controller;

  const AnimatedLogo({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag:
          'logoHeroTag', // Make sure to use the same tag in the source and destination screens
      child: RotationTransition(
        turns: Tween<double>(begin: 0, end: 1).animate(controller),
        child: SvgPicture.asset(
          AppImages.logoSvg,
          height: 60.sp,
          width: 60.sp,
        ),
      ),
    );
  }
}