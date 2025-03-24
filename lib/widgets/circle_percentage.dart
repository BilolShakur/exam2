import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'package:exam/utils/app_text_style.dart';
import 'package:exam/utils/flexable_size_pixels.dart';

class CirclePercentage extends StatelessWidget {
  final String h1text;
  final String? h2text;
  const CirclePercentage({Key? key, required this.h1text, this.h2text})
    : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 100.0,
      lineWidth: 10.0,
      percent: 0.7,
      center: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(h1text, style: AppStyles.manropeBold36),
          SizedBox(height: 8.h),
          h2text == null
              ? SizedBox()
              : Text(h2text!, style: AppStyles.poppins400_14_centerGray),
        ],
      ),
      progressColor: Color.fromARGB(255, 66, 168, 53),
      backgroundColor: Color.fromARGB(86, 65, 182, 49),
      circularStrokeCap: CircularStrokeCap.round,
      animation: true,
      animationDuration: 2000,
    );
  }
}
