import 'package:exam/screens/onboarding3.dart';
import 'package:exam/utils/app_images.dart';
import 'package:exam/widgets/onboarding.dart';
import 'package:flutter/material.dart';

class OnboardingSecond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Onboarding(
      picture: Pic.onboarding2,
      h1text: """Read, listen and 
watch anywhere""",
      h2text:
          "We read the best books, highlight key ideas and insights, create summaries and visual narratives for you",
      to: Onboarding3(),
      currentIndex: 1,
    );
  }
}
