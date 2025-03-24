import 'package:exam/utils/app_colors.dart';
import 'package:exam/utils/app_images.dart';
import 'package:exam/utils/app_text_style.dart';
import 'package:exam/utils/flexable_size_pixels.dart';
import 'package:exam/widgets/book_lottery.dart';
import 'package:exam/widgets/bottom_navigator_bar.dart';
import 'package:exam/widgets/categories.dart';
import 'package:exam/widgets/book_rows.dart';
import 'package:exam/widgets/book_rows_with_title.dart';
import 'package:exam/widgets/books_rows_with_author.dart';
import 'package:exam/widgets/small_book_row.dart';
import 'package:exam/widgets/succes_container.dart';
import 'package:flutter/material.dart';

class DiscoverScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(index: 1),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.h),
            Row(
              children: [
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search, size: 30),
                ),
                SizedBox(width: 20.h),
              ],
            ),
            SizedBox(height: 24.h),

            Text("   Discover", style: AppStyles.manropeBold36),
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
                    height: 56.h,
                    width: 335.w,
                    decoration: BoxDecoration(
                      color: MyColor.background2,
                      border: Border.all(color: MyColor.background),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 13.h,
                        bottom: 13,
                        left: 16.w,
                      ),
                      child: Row(
                        children: [
                          Image.asset(Pic.otherStreakDrop),
                          SizedBox(width: 8.w),
                          Text(
                            "Start your reading streak!",
                            style: AppStyles.poppinsBold_14,
                          ),
                          SizedBox(width: 15.w),

                          Text(
                            "  20 min to\nmark day 1",
                            style: AppStyles.poppins400_12,
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 4.h),
                ],
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,

              child: Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    SmallBookRow(pic: Pic.booksEscape),
                    SmallBookRow(pic: Pic.booksSteve),
                    SmallBookRow(pic: Pic.booksJay),
                    SmallBookRow(pic: Pic.booksManager),
                    SmallBookRow(pic: Pic.booksEscape),

                    SmallBookRow(pic: Pic.booksManager),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Challenges", style: AppStyles.manropeBold24),
                  SizedBox(height: 24.h),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SuccesContainer(
                          h1text: "Success",
                          h2text: "28-day-challenge",
                          pic: Pic.otherChess,
                          index: 1,
                        ),
                        SuccesContainer(
                          h1text: "Success",
                          h2text: "28-day-challenge",
                          pic: Pic.otherChess,
                          index: 2,
                        ),
                        SuccesContainer(
                          h1text: "Success",
                          h2text: "28-day-challenge",
                          pic: Pic.otherChess,
                          index: 3,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 54.h),
                  Text("Collections", style: AppStyles.manropeBold24),
                  SizedBox(height: 24),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        BookRowsWithTitle(pic: Pic.booksUkrain),
                        BookRowsWithTitle(pic: Pic.booksUkrain),
                      ],
                    ),
                  ),
                  SizedBox(height: 32.h),
                  Text("Visual Explainers", style: AppStyles.manropeBold24),
                  SizedBox(height: 24),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        BooksRowsWithAuthor(
                          h2text: "The Subtle Art of Not Giving Fuck",
                          h3text: "Mark Manson",
                          pic: Pic.booksManson,
                        ),
                        BooksRowsWithAuthor(
                          h2text: "Atomic Habits",
                          h3text: "James Clear",
                          pic: Pic.booksAtomic,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32.h),
                  Text("Today for you", style: AppStyles.manropeBold24),
                  SizedBox(height: 24),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        BooksRows(h2text: "Limitless", pic: Pic.booksLimitless),
                        BooksRows(h2text: "Money", pic: Pic.booksMoney),
                        BooksRows(h2text: "Habits Habits", pic: Pic.booksHabit),
                      ],
                    ),
                  ),
                  SizedBox(height: 32.h),
                  Text("To have more money", style: AppStyles.manropeBold24),
                  SizedBox(height: 24),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        BooksRows(
                          h2text: "Self-Care Solution",
                          pic: Pic.booksSelfCare,
                        ),
                        BooksRows(
                          h2text: "Things Mentally",
                          pic: Pic.booksMindlife,
                        ),
                        BooksRows(h2text: "NAd Habits", pic: Pic.booksHabit),
                      ],
                    ),
                  ),
                  SizedBox(height: 32.h),

                  Text("Categories", style: AppStyles.manropeBold24),
                  SizedBox(height: 24.h),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Categories(
                          h1text: 'Self_Growth',
                          pic: Pic.otherSelfGrowth,
                        ),
                        Categories(h1text: 'Spirituality', pic: Pic.otherSmile),
                        Categories(h1text: 'Spirituality', pic: Pic.otherSmile),
                      ],
                    ),
                  ),
                  SizedBox(height: 12.h),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Categories(h1text: 'Productivity', pic: Pic.otherTime),
                        Categories(
                          h1text: 'Business & CarCarCar',
                          pic: Pic.otherCoinGrowth,
                        ),
                        Categories(h1text: 'Spirituality', pic: Pic.otherSmile),
                      ],
                    ),
                  ),
                  SizedBox(height: 32.h),

                  Text("To have more money", style: AppStyles.manropeBold24),
                  SizedBox(height: 24.h),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        BooksRows(
                          h2text: "Peter M. Senge",
                          pic: Pic.booksDiscipline,
                        ),
                        BooksRows(
                          h2text: "Bruce C. Greenw,,,",
                          pic: Pic.booksValue,
                        ),
                        BooksRows(
                          h2text: "Alice johnson",
                          pic: Pic.booksShiver,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40.h),
                  BookLottery(),
                  SizedBox(height: 24.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
