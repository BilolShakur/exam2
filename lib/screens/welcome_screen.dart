import 'package:exam/screens/discover_screen.dart';
import 'package:exam/utils/app_images.dart';
import 'package:exam/utils/app_text_style.dart';
import 'package:exam/utils/flexable_size_pixels.dart';
import 'package:exam/widgets/button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 131.h),
            Image.asset(Pic.loginHand, height: 150.h, width: 108.w),
            SizedBox(height: 47),
            Text("Glad to have you", style: AppStyles.manropeBold28),
            Row(
              children: [
                Text("with us,", style: AppStyles.manropeBold28),
                Text(" Borkat!", style: AppStyles.manropeBold28_blue),
              ],
            ),
            SizedBox(height: 16.h),
            Text("Let your journey begin", style: AppStyles.poppins400_16),
            SizedBox(height: 270.h),
            MyButton(text: "Continue", toWhere: DiscoverScreen()),
          ],
        ),
      ),
    );
  }
}
