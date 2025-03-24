import 'package:exam/screens/onboarding3.dart';
import 'package:exam/screens/onboardingFourth.dart';
import 'package:exam/utils/app_images.dart';
import 'package:exam/widgets/onboarding.dart';
import 'package:flutter/material.dart';

class Onboarding3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Onboarding(
      picture: Pic.onboarding3,
      h1text: """Personal reading
plan""",
      h2text: "Set your reading goals & accept a personalized challenge",
      to: Onboarding4(),
      currentIndex: 2,
    );
  }
}
