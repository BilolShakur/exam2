import 'package:exam/utils/app_colors.dart';
import 'package:exam/utils/app_images.dart';
import 'package:exam/utils/app_text_style.dart';
import 'package:exam/utils/flexable_size_pixels.dart';
import 'package:exam/widgets/listen_button.dart';
import 'package:exam/widgets/play_circle_button.dart';
import 'package:exam/widgets/share_button.dart';
import 'package:flutter/material.dart';

class ReadScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [PlayCircleButton(), SizedBox(width: 12.w), ListenButton()],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 60.h,
                left: 20.w,
                right: 20.w,
                bottom: 16.h,
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close),
                  ),
                  SizedBox(width: 12.w),
                  Text("Steve Jobs", style: AppStyles.poppins_20_Boldex),
                  Spacer(),
                  Image.asset(Pic.iconsMenu, height: 18.h, width: 18.w),
                  SizedBox(width: 16.w),
                  Image.asset(
                    "assets/images/Aa.png",
                    height: 24.h,
                    width: 24.w,
                  ),
                ],
              ),
            ),
            Container(
              width: 375.w,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: MyColor.background),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 4.h),
                  Text(
                    "Steve Jobs, the chose on",
                    style: AppStyles.manropeBold24,
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    """Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.""",
                    style: AppStyles.poppins400_16,
                  ),
                  SizedBox(height: 40.h),

                  SizedBox(
                    height: 72.h,
                    width: 335.w,
                    child: Stack(
                      children: [
                        Image.asset(Pic.otherLightning),
                        Positioned(
                          left: 50.w,
                          top: 7.h,
                          child: Text(
                            "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit, sed do\neiusmod tempor incididunt .",
                            style: AppStyles.poppins400_16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      Spacer(),
                      ShareButton(
                        pic: Image.asset(Pic.iconsShare),
                        h1text: "Share",
                      ),
                      SizedBox(width: 12.w),
                      ShareButton(
                        pic: Icon(Icons.add, size: 28),
                        h1text: "Remember",
                      ),
                    ],
                  ),
                  SizedBox(height: 40.h),
                  Text(
                    """Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
        
        Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. """,
                    style: AppStyles.poppins400_16,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
