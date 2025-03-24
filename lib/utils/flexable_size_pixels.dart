import 'package:flutter/widgets.dart';

class Size {
  static double screenWidth = 0;
  static double screenHeight = 0;

  static void mySize(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
  }
}

extension SizeExtension on num {
  double get h => (this / 812) * Size.screenHeight; 
  double get w => (this / 375) * Size.screenWidth; 
}
