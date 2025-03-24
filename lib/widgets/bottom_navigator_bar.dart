import 'package:exam/screens/discover_screen.dart';
import 'package:exam/screens/library_screen.dart';
import 'package:exam/screens/profile_screen.dart';
import 'package:exam/screens/repetition_screen.dart';
import 'package:exam/utils/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:exam/utils/app_images.dart';
import 'package:exam/utils/app_text_style.dart';
import 'package:exam/utils/flexable_size_pixels.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88.h,
      padding: EdgeInsets.symmetric(vertical: 12.h),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.grey.shade300, width: 1)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => DiscoverScreen()),
                  );
                },
                child: Image.asset(
                  index == 1 ? Pic.dis : Pic.iconsDiscoverUnpressed,
                  height: 24.h,
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                "Discover",
                style:
                    index == 1
                        ? AppStyles.poppins500_12_center_blue
                        : AppStyles.poppins500_12_center.copyWith(
                          color: Colors.grey,
                        ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LibraryScreen()),
                  );
                },
                child: Icon(
                  Icons.bookmark_outline,
                  size: 25.h,
                  color: index == 2 ? MyColor.blue : Colors.grey,
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                "Library",                                    
                style: AppStyles.poppins500_12_center.copyWith(
                  color: index == 2 ? MyColor.blue : Colors.grey,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => RepetitionScreen()),
              );
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  index == 3
                      ? "assets/images/pressed_r.png"
                      : Pic.iconsRepetition,
                  height: 24.h,
                ),
                SizedBox(height: 5.h),
                Text(
                  "Repetition",
                  style: AppStyles.poppins500_12_center.copyWith(
                    color: index == 3 ? MyColor.blue : Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  index == 4
                      ? "assets/images/pressed_p.png"
                      : "assets/images/icons_person.png",
                  height: 24.h,
                ),
                SizedBox(height: 5.h),
                Text(
                  "Profile",
                  style: AppStyles.poppins500_12_center.copyWith(
                    color: index == 4 ? MyColor.blue : Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
