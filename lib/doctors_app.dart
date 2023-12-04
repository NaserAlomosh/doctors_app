import 'package:doctors/core/routing/routes.dart';
import 'package:doctors/core/theme/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctors/core/routing/app_raoter.dart';
import 'package:flutter/material.dart';

class DoctorsApp extends StatelessWidget {
  final AppRouter appRouter;
  const DoctorsApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.onboardingScreen,
          theme: ThemeData(
            primaryColor: AppColors.primaryBlue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          onGenerateRoute: appRouter.generateRoute,
        );
      },
    );
  }
}
