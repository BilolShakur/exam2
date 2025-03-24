import 'package:exam/screens/signin_2.dart';
import 'package:exam/utils/app_colors.dart';
import 'package:exam/utils/app_images.dart';
import 'package:exam/utils/app_text_style.dart';
import 'package:exam/utils/flexable_size_pixels.dart';
import 'package:exam/widgets/other_method_buttons.dart';
import 'package:exam/widgets/skip_button.dart';
import 'package:flutter/material.dart';

class Signin1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 65),
            SkipButton(h1text: 'Skip'),
            SizedBox(height: 60.h),
            Text("Learning becomes", style: AppStyles.manropeBold28),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontFamily: 'ManropeBold',
                  fontWeight: FontWeight.w700,
                  fontSize: 28.w,
                  height: 32 / 28,
                  color: MyColor.blue,
                ),
                children: [
                  TextSpan(text: "fun"),
                  TextSpan(text: " and", style: AppStyles.manropeBold28),
                  TextSpan(text: " easy"),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            Text("""Log in to personalize your experience &
track your progress""", style: AppStyles.poppins400_16_gray),
            Flexible(child: SizedBox(height: 242.h)),
            Column(
              children: [
                Text(
                  "By continuing I agree with the Terms &",
                  style: AppStyles.poppins400_14_centerGray,
                ),
                Text(
                  "Conditions, Privacy Policy.",
                  style: AppStyles.poppins400_14_centerGray,
                ),
                SizedBox(height: 24.h),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Signin2();
                        },
                      ),
                    );
                  },
                  child:
                
                   Container(
                    height: 56.h,
                    width: 335.w,
                    decoration: BoxDecoration(
                      color: MyColor.h1Text,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(Pic.loginApple, height: 24.h, width: 24.w),
                        SizedBox(width: 16.w),
                        Text(
                          "Continue with Apple",
                          style: AppStyles.poppins400_16_white,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OtherMethodButton(pic: Pic.loginFacebook),
                    OtherMethodButton(pic: Pic.loginGoogle),
                    OtherMethodButton(pic: Pic.loginMail),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
