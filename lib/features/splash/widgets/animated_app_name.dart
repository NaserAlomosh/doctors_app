import 'package:flutter/material.dart';

import '../../../core/theme/strings/app_string.dart';
import '../../../core/theme/styles/app_text_style.dart';

class AnimatedAppName extends StatelessWidget {
  final AnimationController controller;

  const AnimatedAppName({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: Tween<double>(begin: 0, end: 2).animate(controller),
      child: Text(AppString.appName, style: AppTextStyle.font30Blac700Weight),
    );
  }
}
