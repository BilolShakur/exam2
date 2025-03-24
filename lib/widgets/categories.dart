import 'package:flutter/material.dart';

import 'package:exam/utils/app_colors.dart';
import 'package:exam/utils/app_images.dart';
import 'package:exam/utils/app_text_style.dart';
import 'package:exam/utils/flexable_size_pixels.dart';

class Categories extends StatelessWidget {
  final String h1text;
  final String pic;
  const Categories({
    Key? key,
    required this.h1text,
    required this.pic,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 12.w),
      child: Container(
        height: 64.h,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: MyColor.background),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(pic),
              SizedBox(width: 10.w,),
              Text(h1text, style: AppStyles.poppins400_16),
            ],
          ),
        ),
      ),
    );
  }
}
