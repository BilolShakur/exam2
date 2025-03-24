import 'package:exam/utils/app_colors.dart';
import 'package:exam/utils/app_images.dart';
import 'package:exam/utils/app_text_style.dart';
import 'package:exam/utils/flexable_size_pixels.dart';
import 'package:exam/widgets/download_icon.dart';
import 'package:exam/widgets/listen_button.dart';
import 'package:flutter/material.dart';

class ListenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ListenButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 60.h, left: 20.w, right: 19.w),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.close, size: 24.h),
                ),
                SizedBox(width: 54.w),

                Column(
                  children: [
                    Image.asset(Pic.booksSteve, height: 275.h, width: 183.w),
                    SizedBox(height: 32.h),
                    Text("CHAPTER 1 OF 9", style: AppStyles.poppins400_16_gray),
                    SizedBox(height: 8.h),
                    Text(
                      "Steve Jobs, the chosen one",
                      style: AppStyles.poppins400_14_center,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 40.h),
            Row(
              children: [
                Text("00:07", style: AppStyles.poppins400_14_centerGray),
                SizedBox(width: 8.w),
                Container(
                  height: 4.h,
                  width: 17.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      topLeft: Radius.circular(8),
                    ),
                    color: MyColor.blue,
                  ),
                ),
                Container(
                  height: 10.h,
                  width: 10.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: MyColor.blue,
                  ),
                ),
                Container(
                  width: 220.w,
                  height: 4.h,
                  decoration: BoxDecoration(
                    color: MyColor.background,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                  ),
                ),
                SizedBox(width: 8.w),
                Text("01:58", style: AppStyles.poppins400_14_centerGray),
              ],
            ),
            SizedBox(height: 31.h),
            Container(
              height: 32.h,
              decoration: BoxDecoration(
                color: MyColor.background2,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [Text("Speed 1x", style: AppStyles.poppinsBold_14)],
                ),
              ),
            ),
            SizedBox(height: 24.h),
            Row(
              children: [
                Image.asset(Pic.iconsBackTo, height: 32.h, width: 32.w),
                SizedBox(width: 16.w),
                Image.asset(
                  "assets/images/back.png",
                  height: 32.h,
                  width: 32.w,
                ),
                SizedBox(width: 72.w),
                Image.asset(
                  "assets/images/stop.png",
                  height: 32.h,
                  width: 32.w,
                ),
                SizedBox(width: 72.w),
                Image.asset(
                  "assets/images/forward.png",
                  height: 32.h,
                  width: 32.w,
                ),
                SizedBox(width: 16.w),
                Image.asset(Pic.iconsForwardTo, height: 32.h, width: 32.w),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
