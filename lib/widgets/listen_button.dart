import 'package:exam/screens/listen_screen.dart';
import 'package:exam/utils/app_colors.dart';
import 'package:exam/utils/app_images.dart';
import 'package:exam/utils/flexable_size_pixels.dart';
import 'package:flutter/material.dart';

class ListenButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => ListenScreen()),
        );
      },
      child: Container(
        height: 56.h,
        width: 112.w,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: MyColor.background),
          borderRadius: BorderRadius.circular(40.w),
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: 20.w,
            top: 4.h,
            right: 4.w,
            bottom: 4.h,
          ),
          child: Row(
            children: [
              Image.asset(
                "assets/images/headphoneB.png",
                height: 24.h,
                width: 24.w,
              ),
              Spacer(),
              Container(
                height: 48.h,
                width: 48.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: MyColor.blue,
                ),
                child: Center(
                  child: Image.asset(
                    Pic.iconsChartHorizontal,
                    height: 24.h,
                    width: 24.w,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
