import 'package:exam/screens/onboarding3.dart';
import 'package:exam/screens/signin_1.dart';
import 'package:exam/utils/app_images.dart';
import 'package:exam/widgets/onboarding.dart';
import 'package:flutter/material.dart';

class Onboarding4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Onboarding(
      picture: Pic.onboarding4,
      h1text: """Choose the correct 
answer""",
      h2text: "Get selected and improve",
      to: Signin1(),
      currentIndex: 3,
    );
  }
}
