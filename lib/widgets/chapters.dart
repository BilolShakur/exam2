import 'package:exam/utils/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:exam/utils/app_text_style.dart';
import 'package:exam/utils/flexable_size_pixels.dart';

class Chapters extends StatelessWidget {
  final String h1text;
  final int index;
  const Chapters({Key? key, required this.h1text, required this.index})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, top: 16.h, right: 20.w),
      child: Column(
        children: [
          Row(
            children: [
              Text(index.toString(), style: AppStyles.inter700_24),
              SizedBox(width: 15.w),
              SizedBox(
                width: 275,
                child: Column(
                  children: [Text(h1text, style: AppStyles.poppinsbold_16)],
                ),
              ),
              Spacer(),
              Icon(Icons.arrow_forward_ios_outlined),
            ],
          ),
          SizedBox(height: 19.h),
          Container(
            width: 323.w,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: MyColor.background),
            ),
          ),
        ],
      ),
    );
  }
}
