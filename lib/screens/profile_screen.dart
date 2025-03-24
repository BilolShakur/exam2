import 'package:exam/screens/settings_screen.dart';
import 'package:exam/utils/app_colors.dart';
import 'package:exam/utils/app_images.dart';
import 'package:exam/utils/app_text_style.dart';
import 'package:exam/utils/flexable_size_pixels.dart';
import 'package:exam/widgets/book_lottery.dart';
import 'package:exam/widgets/bottom_navigator_bar.dart';
import 'package:exam/widgets/circle_percentage.dart';
import 'package:exam/widgets/little_circle.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CustomBottomNavBar(index: 4),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.h),
            Row(
              children: [
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SettingsScreen()),
                    );
                  },
                  child: Image.asset(
                    "assets/images/set.png",
                    height: 25.h,
                    width: 25.w,
                  ),
                ),

                SizedBox(width: 20.h),
              ],
            ),
            SizedBox(height: 24.h),

            Text("   Profile", style: AppStyles.manropeBold36),
            SizedBox(height: 16.h),
            Container(
              width: 375.w,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: MyColor.background),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.w),
              child: Column(
                children: [
                  Container(
                    height: 501.h,
                    width: 335.w,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.w, color: MyColor.background),
                      borderRadius: BorderRadius.circular(12.w),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 24.h,
                        bottom: 24.h,
                        left: 20.w,
                        right: 18.w,
                      ),
                      child: Column(
                        children: [
                          Text("Daily goal", style: AppStyles.manropeBold24),
                          SizedBox(height: 16.h),
                          Text("""Read or listen every day to achieve
                     your goals""", style: AppStyles.poppins400_16_gray),
                          SizedBox(height: 24.h),
                          CirclePercentage(
                            h1text: '13',
                            h2text: "of 20 min goal",
                          ),
                          SizedBox(height: 24.h),
                          Container(
                            height: 34.h,
                            width: 97.w,
                            decoration: BoxDecoration(
                              color: MyColor.background,
                              borderRadius: BorderRadius.circular(8.w),
                            ),
                            child: Center(
                              child: Text(
                                "Adjust Goal",
                                style: AppStyles.poppins400_14_center,
                              ),
                            ),
                          ),
                          SizedBox(height: 24.h),
                          Row(
                            children: [
                              LittleCircle(h1text: 'S', isGreen: true),
                              LittleCircle(h1text: 'M', isGreen: true),
                              LittleCircle(h1text: 'T', isGreen: true),
                              CircularPercentIndicator(
                                radius: 15.w,
                                lineWidth: 3,

                                percent: 0.7,
                                center: Text(
                                  "W",
                                  style: AppStyles.poppinsbold_16.copyWith(
                                    color: Color(0xFF41B631),
                                  ),
                                ),

                                progressColor: Color.fromARGB(255, 66, 168, 53),
                                backgroundColor: Color.fromARGB(
                                  86,
                                  65,
                                  182,
                                  49,
                                ),
                                circularStrokeCap: CircularStrokeCap.round,
                                animation: true,
                                animationDuration: 2000,
                              ),
                              SizedBox(width: 14.w),
                              LittleCircle(h1text: "T", isGreen: false),
                              LittleCircle(h1text: "F", isGreen: false),
                              LittleCircle(
                                h1text: "S",
                                isGreen: false,
                                isLast: true,
                              ),
                            ],
                          ),
                          SizedBox(height: 25.h),

                          Row(
                            children: [
                              Image.asset(
                                Pic.otherStreakGreen,
                                height: 26.h,
                                width: 22.w,
                              ),
                              SizedBox(width: 4.w),
                              Text(
                                "My streak is 0 days",
                                style: AppStyles.poppins400_14_center,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Container(
                    height: 450.h,
                    width: 335.w,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.w, color: MyColor.background),
                      borderRadius: BorderRadius.circular(12.w),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 24.h,
                        horizontal: 20.w,
                      ),
                      child: Column(
                        children: [
                          Text("My progress", style: AppStyles.manropeBold24),
                          SizedBox(height: 16.h),
                          Text("""I read and listen more than 50% Of
                     Better Readers""", style: AppStyles.poppins400_16_gray),
                          SizedBox(height: 24.h),
                          CirclePercentage(h1text: '59%'),
                          SizedBox(height: 24.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text("31", style: AppStyles.manropeBold48),
                                  SizedBox(height: 9.h),
                                  Text(
                                    "Book s finished",
                                    style: AppStyles.poppins400_16,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text("281", style: AppStyles.manropeBold48),
                                  SizedBox(height: 9.h),
                                  Text(
                                    "Pages read",
                                    style: AppStyles.poppins400_16,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  BookLottery(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
