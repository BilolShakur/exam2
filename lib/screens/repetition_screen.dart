import 'package:exam/utils/app_colors.dart';
import 'package:exam/utils/app_images.dart';
import 'package:exam/utils/app_text_style.dart';
import 'package:exam/utils/flexable_size_pixels.dart';
import 'package:exam/widgets/book_lottery.dart';
import 'package:exam/widgets/bottom_navigator_bar.dart';
import 'package:exam/widgets/stacked_bookds.dart';
import 'package:flutter/material.dart';

class RepetitionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CustomBottomNavBar(index: 3),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 68.h),
            Text("  Library", style: AppStyles.manropeBold36),
            SizedBox(height: 24.h),
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
                  SizedBox(height: 20.h),
                  Container(
                    height: 112.h,
                    width: 335.w,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: MyColor.background),
                      borderRadius: BorderRadius.circular(12.w),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20.h),
                      child: Stack(
                        children: [
                          Positioned(
                            child: Text(
                              "Spaced Repetition",
                              style: AppStyles.poppins_20_Boldex,
                            ),
                          ),
                          Positioned(
                            top: 36.h,
                            child: Text(
                              "How it helps you to know \nmore?",
                              style: AppStyles.poppins400_14_center,
                            ),
                          ),
                          Positioned(
                            top: 12.h,
                            right: 0.w,
                            child: Image.asset(
                              Pic.otherPc,
                              height: 60.h,
                              width: 60.w,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 40.h),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 56.h,
                      width: 197.w,
                      decoration: BoxDecoration(
                        color: MyColor.blue,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          "Repeat 4 cards",
                          style: AppStyles.poppins400_16_white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40.h),
                  Row(
                    children: [
                      StackedBooks(h1text: '1 card', pic: Pic.books7a),
                      SizedBox(width: 16.w),
                      StackedBooks(h1text: '3 card', pic: Pic.booksSteve),
                    ],
                  ),
                  SizedBox(height: 40.h),
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
