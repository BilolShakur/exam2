import 'package:exam/screens/listen_screen.dart';
import 'package:exam/screens/read_screen.dart';
import 'package:exam/utils/app_colors.dart';
import 'package:exam/utils/app_images.dart';
import 'package:exam/utils/app_text_style.dart';
import 'package:exam/utils/flexable_size_pixels.dart';
import 'package:exam/widgets/Categories.dart';
import 'package:exam/widgets/chapters.dart';
import 'package:exam/widgets/download_icon.dart';
import 'package:exam/widgets/floating_action_button.dart';
import 'package:flutter/material.dart';

class SummaryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(width: 20.w),
          ActionButton(
            pic: Pic.iconsHeadphones,
            h1text: "Here",
            to: ListenScreen(),
          ),
          ActionButton(pic: Pic.iconsChart, h1text: "Read", to: ReadScreen()),
        ],
      ),

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
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.close, size: 24.h),
                          ),

                          SizedBox(width: 58.w),

                          Column(
                            children: [
                              Image.asset(
                                Pic.booksSteve,
                                height: 275.h,
                                width: 183.w,
                              ),
                              SizedBox(height: 32.h),
                              Text("Steve Jobs", style: AppStyles.inter700_24),
                              SizedBox(height: 8.h),
                              Text(
                                "Walter Lsaacson",
                                style: AppStyles.poppins400_14_center,
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              Image.asset(
                                Pic.iconsShare,
                                height: 24.h,
                                width: 24.w,
                              ),
                              SizedBox(height: 24.h),
                              DownloadIcon(),
                              SizedBox(height: 24.h),
                              Image.asset(
                                Pic.iconsBookmarkBlack,
                                height: 24.h,
                                width: 24.w,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text("    What's insdie?", style: AppStyles.manropeBold24),
                    SizedBox(height: 20.h),
                    Container(
                      width: 375.w,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: MyColor.background),
                      ),
                    ),
                    Chapters(h1text: "Steve Jobs, the chosen one ", index: 1),
                    Chapters(h1text: "A wierd tandem of two Steves", index: 2),
                    Chapters(h1text: "Steve Jobs, the chosen one", index: 1),
                    Chapters(h1text: "A wierd tandem of two Steves", index: 2),
                    Chapters(
                      h1text:
                          "Steve Wozniak devised Apple I, and Steve Jobs monetized it",
                      index: 3,
                    ),
                    Chapters(
                      h1text: "Investment rollercoaster for Apple II",
                      index: 4,
                    ),
                    Chapters(
                      h1text: "Steve Jobs, a man of paradoxes",
                      index: 5,
                    ),
                    Chapters(
                      h1text: "Dreaming the Mac through competition with IBM",
                      index: 6,
                    ),
                    Chapters(
                      h1text: "Dramatic race to take over Apple",
                      index: 7,
                    ),
                    Chapters(
                      h1text:
                          "Steve Jobs didn’t know what people wanted; he told them what they wanted",
                      index: 8,
                    ),
                    Chapters(h1text: "Conclusion", index: 9),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: EdgeInsets.all(20.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Description", style: AppStyles.manropeBold24),
                          SizedBox(height: 24.h),
                          Text(
                            """Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.

Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.""",
                            style: AppStyles.poppins400_16,
                          ),
                          SizedBox(height: 40),
                          Container(
                            height: 56.h,
                            width: 335.w,
                            decoration: BoxDecoration(
                              color: MyColor.background,

                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 16.h,
                                left: 48.w,
                                bottom: 16.h,
                              ),
                              child: Row(
                                children: [
                                  Image.asset(Pic.iconsArrowTopRight),
                                  SizedBox(width: 12.w),
                                  Text(
                                    "Buy this book on Amazon",
                                    style: AppStyles.poppinsbold_16,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 40.h),
                          Text("Categories", style: AppStyles.manropeBold24),
                          SizedBox(height: 24.h),
                          Categories(
                            h1text: "Personalities",
                            pic: Pic.otherSettings,
                          ),
                          SizedBox(height: 140.h),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
