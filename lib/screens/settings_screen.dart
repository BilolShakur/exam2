import 'package:exam/utils/app_colors.dart';
import 'package:exam/utils/app_text_style.dart';
import 'package:exam/utils/flexable_size_pixels.dart';
import 'package:exam/widgets/book_lottery.dart';
import 'package:exam/widgets/bottom_navigator_bar.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(index: 4),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 60.h),
          Row(
            children: [
              SizedBox(width: 10.w),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_sharp, size: 24.h),
              ),
              SizedBox(width: 12.w),
              Text("Settings", style: AppStyles.poppins500_20_600),
            ],
          ),
          SizedBox(height: 16.h),
          Container(
            width: 375.w,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: MyColor.background),
            ),
          ),
          SizedBox(height: 24.h),
          Padding(
            padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 32.h,
              children: [
                Text("Privacy Policy", style: AppStyles.poppins400_18),
                Text("Terms of Use ", style: AppStyles.poppins400_18),
                Text("Subscription Terms", style: AppStyles.poppins400_18),
                Text("Notifications", style: AppStyles.poppins400_18),
                Text("Manage Subscription", style: AppStyles.poppins400_18),
                Text("Log out", style: AppStyles.poppins400_18),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "borkat2042@gmail.com",
                  style: AppStyles.poppins400_12_gray,
                ),
                SizedBox(height: 48.h),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 56.h,
                    width: 335.w,
                    decoration: BoxDecoration(color: MyColor.background),
                    child: Center(
                      child: Text(
                        "Contact Support",
                        style: AppStyles.poppins400_16,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 70.h),
                BookLottery(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
