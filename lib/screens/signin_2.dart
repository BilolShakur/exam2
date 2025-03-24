import 'package:exam/screens/welcome_screen.dart';
import 'package:exam/utils/app_colors.dart';
import 'package:exam/utils/app_images.dart';
import 'package:exam/utils/app_text_style.dart';
import 'package:exam/utils/flexable_size_pixels.dart';
import 'package:exam/widgets/button.dart';
import 'package:exam/widgets/skip_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signin2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.h1Text,
      body: Stack(
        children: [
          Positioned(
            top: 44.h,
            left: 20.w,
            child: Container(
              height: 50.h,
              width: 335.w,
              decoration: BoxDecoration(
                color: MyColor.background,
                borderRadius: BorderRadius.circular(12.h),
              ),
            ),
          ),
          Positioned(
            top: 56.h,
            child: Container(
              height: 756.h,
              width: 375.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.h),
              ),
              child: Column(
                children: [
                  SizedBox(height: 35.h),
                  Row(
                    children: [
                      SizedBox(width: 13.w),
                      Icon(Icons.close, size: 24.h),
                      SizedBox(width: 12.w),
                      Text(
                        "Create an Account",
                        style: AppStyles.poppins500_20_600,
                      ),
                      SizedBox(width: 38.w),
                      SkipButton(h1text: "Log in"),
                    ],
                  ),
                  SizedBox(height: 27),
                  Container(
                    width: 375.w,
                    decoration: BoxDecoration(
                      color: MyColor.background,
                      border: Border.all(width: 1, color: MyColor.background),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.w),
                    child: Column(
                      children: [
                        SizedBox(height: 2.h),
                        SizedBox(
                          height: 56.h,
                          width: 335.w,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Name",
                              labelStyle: AppStyles.poppins400_16_gray,
                              prefixIcon: Icon(Icons.person, size: 24.h),

                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: MyColor.background,
                                  width: 1.w,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 16.h),
                        SizedBox(
                          height: 56.h,
                          width: 335.w,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Email",
                              labelStyle: AppStyles.poppins400_16_gray,
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                color: MyColor.h2Text,
                                size: 24.h,
                              ),

                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: MyColor.background,
                                  width: 1.w,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 16.h),
                        SizedBox(
                          height: 56.h,
                          width: 335.w,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Password (8+ characters)",
                              labelStyle: AppStyles.poppins400_16_gray,
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                size: 24.h,
                                color: MyColor.h2Text,
                              ),

                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: MyColor.background,
                                  width: 1.w,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 24.h),
                        MyButton(text: "Get Started", toWhere: WelcomeScreen()),
                        SizedBox(height: 20.h),
                        Text(
                          "By continuing I agree with the Terms &",
                          style: AppStyles.poppins400_14_centerGray,
                        ),
                        Text(
                          "Conditions, Privacy Policy.",
                          style: AppStyles.poppins400_14_centerGray,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
