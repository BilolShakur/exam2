import 'package:flutter/material.dart';

import 'package:exam/utils/app_colors.dart';
import 'package:exam/utils/app_images.dart';
import 'package:exam/utils/app_text_style.dart';
import 'package:exam/utils/flexable_size_pixels.dart';
import 'package:exam/widgets/button.dart';

class Onboarding extends StatelessWidget {
  final String picture;
  final String h1text;
  final String h2text;
  final Widget to;
  final int currentIndex;

  const Onboarding({
    Key? key,
    required this.picture,
    required this.h1text,
    required this.h2text,
    required this.to,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80.h),
            Image.asset(picture),
            SizedBox(height: 60.h),

            SizedBox(
              height: 202.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: List.generate(4, (index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 4.w),
                        height: 20.h,
                        width: 20.w,
                        decoration: BoxDecoration(
                          color:
                              index == currentIndex
                                  ? MyColor.blue
                                  : MyColor.background,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            "${index + 1}",
                            style:
                                index == currentIndex
                                    ? AppStyles.poppins500_14_white
                                    : AppStyles.poppins500_14,
                          ),
                        ),
                      );
                    }),
                  ),
                  SizedBox(height: 24.h),
                  Text(
                    h1text,
                    style: TextStyle(
                      fontFamily: 'ManropeBold',
                      fontSize: 28.w,
                      fontWeight: FontWeight.w700,
                      height: 32 / 28,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  SizedBox(child: Text(h2text, style: AppStyles.poppins400_16)),
                ],
              ),
            ),

            SizedBox(height: 20.h),
            MyButton(toWhere: to, text: 'Continue'),
          ],
        ),
      ),
    );
  }
}
