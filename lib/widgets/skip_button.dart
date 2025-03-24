import 'package:exam/utils/app_text_style.dart';
import 'package:flutter/material.dart';

import 'package:exam/utils/app_colors.dart';
import 'package:exam/utils/flexable_size_pixels.dart';

class SkipButton extends StatelessWidget {
  @override
  final String h1text;
  const SkipButton({Key? key, required this.h1text}) : super(key: key);
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 56.h,
        width: 82.w,
        decoration: BoxDecoration(color: MyColor.background2),
        child: Center(child: Text(h1text, style: AppStyles.poppins400_16)),
      ),
    );
  }
}
