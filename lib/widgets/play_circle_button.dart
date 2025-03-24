import 'package:exam/screens/listen_screen.dart';
import 'package:exam/utils/app_colors.dart';
import 'package:exam/utils/flexable_size_pixels.dart';
import 'package:flutter/material.dart';

class PlayCircleButton extends StatelessWidget {
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
        width: 56.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 1, color: MyColor.background),
          color: Colors.white,
        ),
        child: Center(child: Icon(Icons.play_arrow_rounded, size: 40)),
      ),
    );
  }
}
