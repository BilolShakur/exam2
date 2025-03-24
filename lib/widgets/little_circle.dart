import 'package:flutter/material.dart';

import 'package:exam/utils/app_colors.dart';
import 'package:exam/utils/app_text_style.dart';
import 'package:exam/utils/flexable_size_pixels.dart';

class LittleCircle extends StatelessWidget {
  final String h1text;
  final bool isGreen;
  final bool? isLast;
  const LittleCircle({
    Key? key,
    required this.h1text,
    required this.isGreen,
    this.isLast = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: isLast == false ? 14.w : 0),
      child: Container(
        height: 30.h,
        width: 30.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 3,
            color:
                isGreen ? Color.fromARGB(76, 65, 182, 49) : MyColor.background,
          ),
        ),
        child: Center(
          child: Text(
            h1text,
            style:
                isGreen
                    ? AppStyles.poppinsbold_16.copyWith(
                      color: Color(0xFF41B631),
                    )
                    : AppStyles.poppinsbold_16,
          ),
        ),
      ),
    );
  }
}
