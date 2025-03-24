import 'package:flutter/material.dart';

import 'package:exam/utils/app_colors.dart';
import 'package:exam/utils/app_text_style.dart';
import 'package:exam/utils/flexable_size_pixels.dart';

class ActionButton extends StatelessWidget {
  final String pic;
  final String h1text;
  final Widget to;
  const ActionButton({
    Key? key,
    required this.pic,
    required this.h1text,
    required this.to,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => to));
      },
      child: Container(
        height: 56.h,
        width: 160.w,
        decoration: BoxDecoration(
          color: MyColor.blue,
          borderRadius: BorderRadius.circular(8.w),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 16.h, bottom: 16.h, left: 41.w),
          child: Row(
            children: [
              Image.asset(pic),
              SizedBox(width: 16.w),
              Text(h1text, style: AppStyles.poppinsbold_16_white),
            ],
          ),
        ),
      ),
    );
  }
}
