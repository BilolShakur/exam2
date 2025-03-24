import 'package:exam/screens/summary.dart';
import 'package:flutter/material.dart';

import 'package:exam/utils/app_colors.dart';
import 'package:exam/utils/app_images.dart';
import 'package:exam/utils/flexable_size_pixels.dart';

class SmallBookRow extends StatelessWidget {
  final String pic;
  const SmallBookRow({Key? key, required this.pic}) : super(key: key);
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
        padding: EdgeInsets.only(right: 16),
        child: Container(
          width: 76.w,
          height: 96.h,
          decoration: BoxDecoration(
            border: Border.all(width: 2.w, color: MyColor.blue),
            borderRadius: BorderRadius.circular(18.w),
          ),
          child: Stack(
            children: [
              Align(
                child: Container(
                  height: 88.h,
                  width: 68.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.w),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18.w),
                    child: Image.asset(pic, fit: BoxFit.cover),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
