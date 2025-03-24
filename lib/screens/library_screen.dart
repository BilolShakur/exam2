import 'package:exam/utils/app_colors.dart';
import 'package:exam/utils/app_images.dart';
import 'package:exam/utils/app_text_style.dart';
import 'package:exam/utils/flexable_size_pixels.dart';
import 'package:exam/widgets/book_lottery.dart';
import 'package:exam/widgets/book_with_rows.dart';
import 'package:exam/widgets/bottom_navigator_bar.dart';
import 'package:flutter/material.dart';

class LibraryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CustomBottomNavBar(index: 2),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 44.h),
                  Row(children: [Spacer(), Icon(Icons.search, size: 24.h)]),
                  SizedBox(height: 24.h),
                  Text("Library", style: AppStyles.manropeBold36),
                  SizedBox(height: 32.h),
                  Row(
                    children: [
                      Text("Books 35", style: AppStyles.poppinsBold_14Blue),
                      SizedBox(width: 21.w),
                      Text(
                        "Highlights 0",
                        style: AppStyles.poppins400_14_center,
                      ),
                      SizedBox(height: 20.h),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  width: 18.w,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: MyColor.background),
                  ),
                ),
                Container(
                  width: 63.w,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: MyColor.blue),
                  ),
                ),
                Container(
                  width: 294.w,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: MyColor.background),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12.h),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: "Next", style: AppStyles.manropeBold24),
                        TextSpan(
                          text: " 5",
                          style: AppStyles.manropeBold24Gray,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.h),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        BookWithButtons(
                          h1text: "Bruce C. Green ...",
                          pic: Pic.booksChess,
                        ),
                        BookWithButtons(
                          h1text: "Bruce C. Green ...",
                          pic: Pic.books5amClub,
                        ),
                        BookWithButtons(
                          h1text: "Bruce C. Green ...",
                          pic: Pic.books7Habits,
                        ),
                        BookWithButtons(
                          h1text: "Bruce C. Green ...",
                          pic: Pic.booksChess,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32.h),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Finished",
                          style: AppStyles.manropeBold24,
                        ),
                        TextSpan(
                          text: " 30",
                          style: AppStyles.manropeBold24Gray,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.h),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        BookWithButtons(
                          h1text: "based on article",
                          pic: Pic.booksUkrain,
                        ),
                        BookWithButtons(
                          h1text: "Mark Manson",
                          pic: Pic.booksManson,
                        ),
                        BookWithButtons(
                          h1text: "Limitless",
                          pic: Pic.booksLimitless,
                        ),
                        BookWithButtons(
                          h1text: "Bruce C. Green ...",
                          pic: Pic.booksLimitless,
                        ),
                      ],
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
