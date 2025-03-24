import 'package:exam/screens/onboarding2.dart';
import 'package:exam/utils/app_images.dart';
import 'package:exam/widgets/onboarding.dart';
import 'package:flutter/material.dart';

class OnboardingFirst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Onboarding(
      picture: Pic.onboarding1,
      h1text: "Books in 15 minutes",
      h2text:
          "We read the best books, highlight key ideas and insights, create summaries and visual narratives for you",
      to: OnboardingSecond(),
      currentIndex: 0,
    );
  }
}
