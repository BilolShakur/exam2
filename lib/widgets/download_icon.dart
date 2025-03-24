import 'package:exam/utils/app_images.dart';
import 'package:exam/utils/flexable_size_pixels.dart';
import 'package:flutter/material.dart';

class DownloadIcon extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DownloadIconstate();
  }
}

class DownloadIconstate extends State<DownloadIcon> {
  bool ispressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          ispressed = !ispressed;
        });
      },
      child:
          ispressed
              ? Image.asset(Pic.iconsDownloading, height: 24.h, width: 24.w)
              : Image.asset(Pic.iconsDownload, height: 24.h, width: 24.w),
    );
  }
}
