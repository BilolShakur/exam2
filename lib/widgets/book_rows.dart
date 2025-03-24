import 'package:exam/screens/summary.dart';
import 'package:flutter/material.dart';

import 'package:exam/utils/app_text_style.dart';
import 'package:exam/utils/flexable_size_pixels.dart';

class BooksRows extends StatelessWidget {
  final String h2text;

  final String pic;
  const BooksRows({Key? key, required this.h2text, required this.pic})
    : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 150.w,
            height: 260.h,
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
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(pic),
                  ),
                ),

                SizedBox(height: 12.h),
                Text(
                  h2text,
                  style: AppStyles.poppinsbold_16_gray,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
