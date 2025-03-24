import 'package:flutter/material.dart';

import 'package:exam/utils/app_colors.dart';
import 'package:exam/utils/flexable_size_pixels.dart';

class OtherMethodButton extends StatelessWidget {
  final String pic;
  const OtherMethodButton({Key? key, required this.pic}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: InkWell(
        child: Container(
          height: 56.h,
          width: 56.w,
          decoration: BoxDecoration(
            color: MyColor.background2,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(child: Image.asset(pic, height: 24.h, width: 24.w)),
        ),
      ),
    );
  }
}
