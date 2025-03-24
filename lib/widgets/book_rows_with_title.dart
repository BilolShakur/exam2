import 'package:exam/screens/summary.dart';
import 'package:flutter/material.dart';

import 'package:exam/utils/app_images.dart';
import 'package:exam/utils/flexable_size_pixels.dart';

class BookRowsWithTitle extends StatelessWidget {
  final String pic;
  const BookRowsWithTitle({Key? key, required this.pic}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.w),
      child: GestureDetector(
        onTap: () {
           Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SummaryScreen()),
          );
          
        },
        child: Column(
          children: [
            Container(
              height: 240.h,
              width: 240.w,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(pic)),
        
                borderRadius: BorderRadius.circular(16),
              ),
              child: Align(
                alignment: Alignment(0.65.w, 0.65.h),
                child: Image.asset(Pic.onboardingBook, height: 32.h, width: 49.w),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
