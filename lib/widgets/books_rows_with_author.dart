import 'package:exam/screens/summary.dart';
import 'package:flutter/material.dart';

import 'package:exam/utils/app_text_style.dart';
import 'package:exam/utils/flexable_size_pixels.dart';

class BooksRowsWithAuthor extends StatelessWidget {
  final String h2text;
  final String? h3text;
  final String pic;
  const BooksRowsWithAuthor({
    Key? key,

    required this.h2text,
    this.h3text,
    required this.pic,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 170.w,
            height: 224.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SummaryScreen()),
                    );
                  },
                  child: Image.asset(pic),
                ),
                SizedBox(height: 12.h),
                Text(
                  h2text,
                  style: AppStyles.poppinsBold_14,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 8.h),
                h3text != null
                    ? Text(h3text!, style: AppStyles.poppins400_12_gray)
                    : SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
