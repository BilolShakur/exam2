import 'package:exam/utils/app_text_style.dart';
import 'package:flutter/material.dart';

import 'package:exam/utils/app_colors.dart';
import 'package:exam/utils/app_images.dart';
import 'package:exam/utils/flexable_size_pixels.dart';

class StackedBooks extends StatelessWidget {
  final String h1text;
  final String pic;
  const StackedBooks({Key? key, required this.h1text, required this.pic})
    : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 189.h,
      width: 103.w,
      child: Stack(
        children: [
          Positioned(
            left: 8.w,
            child: Container(
              height: 159.h,
              width: 87.w,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: MyColor.background),
                borderRadius: BorderRadius.circular(6.w),
              ),
            ),
          ),
          Positioned(
            left: 4.w,
            top: 6.h,
            child: Container(
              height: 153.h,
              width: 95.w,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: MyColor.background),
                borderRadius: BorderRadius.circular(6.w),
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 12.h,
            child: Container(
              height: 147.h,
              width: 103.w,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: MyColor.background),
                borderRadius: BorderRadius.circular(6.w),
                color: Colors.white,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6.w),
                child: Image.asset(pic, fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Text(h1text, style: AppStyles.poppins400_14_center),
          ),
        ],
      ),
    );
  }
}
