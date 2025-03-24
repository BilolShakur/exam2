import 'package:exam/utils/app_text_style.dart';
import 'package:flutter/material.dart';

import 'package:exam/utils/app_colors.dart';
import 'package:exam/utils/flexable_size_pixels.dart';

class ShareButton extends StatelessWidget {
  final Widget pic;
  final String h1text;
  const ShareButton({Key? key, required this.pic, required this.h1text})
    : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.h,
      decoration: BoxDecoration(
        color: MyColor.background2,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            pic,
            SizedBox(width: 10.w),
            Text(h1text, style: AppStyles.poppins400_14_center),
          ],
        ),
      ),
    );
  }
}
