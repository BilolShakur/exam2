import 'package:flutter/material.dart';

import 'package:exam/utils/app_colors.dart';
import 'package:exam/utils/app_text_style.dart';
import 'package:exam/utils/flexable_size_pixels.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Widget toWhere;
  const MyButton({Key? key, required this.text, required this.toWhere})
    : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return toWhere;
            },
          ),
        );
      },
      child: Container(
        height: 56.h,
        width: 335.w,
        decoration: BoxDecoration(
          color: MyColor.blue,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(child: Text(text, style: AppStyles.poppins400_16_white)),
      ),
    );
  }
}
