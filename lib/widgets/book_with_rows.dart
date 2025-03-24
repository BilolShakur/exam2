import 'package:exam/screens/summary.dart';
import 'package:flutter/material.dart';

import 'package:exam/utils/app_colors.dart';
import 'package:exam/utils/app_images.dart';
import 'package:exam/utils/app_text_style.dart';
import 'package:exam/utils/flexable_size_pixels.dart';

class BookWithButtons extends StatelessWidget {
  final String h1text;
  final String pic;
  const BookWithButtons({Key? key, required this.h1text, required this.pic})
    : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SummaryScreen()),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(right: 16.w),
        child: SizedBox(
          height: 197.h,
          width: 112.w,
          child: Stack(
            children: [
              Container(
                height: 169.h,
                width: 112.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.w),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4.w),
                  child: Image.asset(pic, fit: BoxFit.fill),
                ),
              ),
              Positioned(
                top: 119.h,
                left: 10.w,
                child: Container(
                  height: 40.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4.w),
                    border: Border.all(width: 1, color: MyColor.background),
                  ),
                  child: Center(
                    child: Image.asset(Pic.iconsDownload, height: 24.h),
                  ),
                ),
              ),

              Positioned(
                top: 119.h,
                right: 10.w,
                child: Container(
                  height: 40.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4.w),
                    border: Border.all(width: 1, color: MyColor.background),
                  ),
                  child: Center(
                    child: Image.asset(Pic.iconsDotsHorizontaly, height: 24.h),
                  ),
                ),
              ),
              Positioned(
                bottom: 1,
                child: Text(
                  h1text,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: AppStyles.poppins400_12_gray,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
