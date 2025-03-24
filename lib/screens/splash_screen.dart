import 'package:exam/screens/onboarding1.dart';
import 'package:flutter/material.dart';
import 'package:exam/utils/app_colors.dart';
import 'package:exam/utils/app_images.dart';
import 'package:exam/utils/flexable_size_pixels.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  void goToOnBoarding1(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (ctx) {
          return OnboardingFirst();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3)).then((_) {
      goToOnBoarding1(context);
    });
    Size.mySize(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 230.h,
            width: 300,
            child: Image.asset(Pic.onboardingCurves, height: 992, width: 378),
          ),
          Align(
            child: Image.asset(Pic.onboardingBook, height: 73.h, width: 112.w),
          ),
          Align(
            alignment: Alignment(1, -1),
            child: Image.asset(Pic.onboardingCorner, height: 70.h, width: 80.w),
          ),
          Positioned(
            top: 88.h,
            left: 27.w,
            child: Image.asset(Pic.onboardingAtom, height: 72.h, width: 70.w),
          ),
          Positioned(
            top: 549.h,
            left: 164.w,
            child: Image.asset(Pic.onboardingGreenBook, height: 45.h),
          ),
          Positioned(
            top: 621.h,
            left: 217.w,
            child: Image.asset(Pic.onboardingleaf, height: 167.h),
          ),
          Positioned(
            top: 467.h,
            left: 240.w,
            child: Image.asset(
              Pic.onboardingOrangeBook,
              height: 120.h,
              width: 120.w,
            ),
          ),

          Positioned(
            top: 116.h,
            left: 173.w,
            child: Image.asset(
              Pic.onboardingOrangeBook,
              height: 100.h,
              width: 100.w,
            ),
          ),
          Positioned(
            top: 167.h,
            right: 44.w,
            child: Image.asset(Pic.onboardingStar, height: 57.h, width: 57.w),
          ),
        ],
      ),
    );
  }
}
