import 'package:exam/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:exam/utils/app_colors.dart';
import 'package:exam/utils/flexable_size_pixels.dart';

class SuccesContainer extends StatelessWidget {
  final String h1text;
  final String h2text;
  final String pic;
  final int index; // Pass index from parent to control alternation

  SuccesContainer({
    Key? key,
    required this.h1text,
    required this.h2text,
    required this.pic,
    required this.index, // Added index
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.w),
      child: Container(
        height: 100.h,
        width: 300.w,
        decoration: BoxDecoration(
          color: index.isOdd ? MyColor.background2 : MyColor.h1Text,
          border: Border.all(width: 1.w, color: MyColor.background),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    h1text,
                    style:
                        index.isOdd
                            ? AppStyles.inter700_24
                            : AppStyles.inter700_24_white,
                  ),
                  SizedBox(height: 16.h),
                  Text(h2text, style: AppStyles.poppins500_20_blue),
                ],
              ),
              Spacer(),
              Image.asset(pic, height: 56.h, width: 56.w),
            ],
          ),
        ),
      ),
    );
  }
}
