import 'package:exam/utils/app_colors.dart';
import 'package:exam/utils/app_images.dart';
import 'package:exam/utils/app_text_style.dart';
import 'package:exam/utils/flexable_size_pixels.dart';
import 'package:flutter/material.dart';

class BookLottery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 56.h,
        width: 335.w,
        decoration: BoxDecoration(
          color: MyColor.background2,
          border: Border.all(
            color: const Color.fromARGB(255, 186, 187, 190),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 10.h, left: 20.w, bottom: 10.h),
          child: Row(
            children: [
              Image.asset(Pic.otherCubes),
              SizedBox(width: 20.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Book lottery", style: AppStyles.poppinsBold_14),

                  Text(
                    "Tap for a random read",
                    style: AppStyles.poppins400_12_gray,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
