import 'package:exam/screens/welcome_screen.dart';
import 'package:exam/utils/app_colors.dart';

import 'package:exam/utils/app_text_style.dart';
import 'package:exam/utils/flexable_size_pixels.dart';

import 'package:exam/widgets/skip_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signin2 extends StatefulWidget {
  @override
  _Signin2State createState() => _Signin2State();
}

class _Signin2State extends State<Signin2> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.h1Text,
      body: Stack(
        children: [
          Positioned(
            top: 44.h,
            left: 20.w,
            child: Container(
              height: 50.h,
              width: 335.w,
              decoration: BoxDecoration(
                color: MyColor.background,
                borderRadius: BorderRadius.circular(12.h),
              ),
            ),
          ),
          Positioned(
            top: 56.h,
            child: Container(
              height: 756.h,
              width: 375.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.h),
              ),
              child: Column(
                children: [
                  SizedBox(height: 35.h),
                  Row(
                    children: [
                      SizedBox(width: 13.w),
                      Icon(Icons.close, size: 24.h),
                      SizedBox(width: 12.w),
                      Text(
                        "Create an Account",
                        style: AppStyles.poppins500_20_600,
                      ),
                      SizedBox(width: 38.w),
                      SkipButton(h1text: "Log in"),
                    ],
                  ),
                  SizedBox(height: 27),
                  Container(
                    width: 375.w,
                    decoration: BoxDecoration(
                      color: MyColor.background,
                      border: Border.all(width: 1, color: MyColor.background),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.w),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          SizedBox(height: 2.h),
                          SizedBox(
                            height: 56.h,
                            width: 335.w,
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: "Name",
                                labelStyle: AppStyles.poppins400_16_gray,
                                prefixIcon: Icon(Icons.person, size: 24.h),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                    color: MyColor.background,
                                    width: 1.w,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16.h),
                          SizedBox(
                            height: 56.h,
                            width: 335.w,
                            child: TextFormField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                labelText: "Email",
                                labelStyle: AppStyles.poppins400_16_gray,
                                prefixIcon: Icon(
                                  Icons.email_outlined,
                                  color: MyColor.h2Text,
                                  size: 24.h,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                    color: MyColor.background,
                                    width: 1.w,
                                  ),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Email is required';
                                } else if (!RegExp(
                                  r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
                                ).hasMatch(value)) {
                                  return 'Enter a valid email address';
                                }
                                return null;
                              },
                            ),
                          ),
                          SizedBox(height: 16.h),
                          SizedBox(
                            height: 56.h,
                            width: 335.w,
                            child: TextFormField(
                              controller: _passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: "Password (8+ characters)",
                                labelStyle: AppStyles.poppins400_16_gray,
                                prefixIcon: Icon(
                                  Icons.lock_outline,
                                  size: 24.h,
                                  color: MyColor.h2Text,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                    color: MyColor.background,
                                    width: 1.w,
                                  ),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Password is required';
                                } else if (value.length < 8) {
                                  return 'Password must be at least 8 characters long';
                                }
                                return null;
                              },
                            ),
                          ),
                          SizedBox(height: 24.h),
                          GestureDetector(
                            onTap: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => WelcomeScreen(),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              height: 56.h,
                              width: 335.w,
                              decoration: BoxDecoration(
                                color: MyColor.blue,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Text(
                                  "Continue",
                                  style: AppStyles.poppins400_16_white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Text(
                            "By continuing I agree with the Terms &",
                            style: AppStyles.poppins400_14_centerGray,
                          ),
                          Text(
                            "Conditions, Privacy Policy.",
                            style: AppStyles.poppins400_14_centerGray,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
