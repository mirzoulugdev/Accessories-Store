import 'sign_in_screen.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_images.dart';
import 'package:flutter/cupertino.dart';

import '../widgets/entry_with_social_media.dart';
import '../widgets/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  static const routeName = '/sign-up';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.backgrounImage,
            fit: BoxFit.cover,
            width: double.infinity.w,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: SizedBox(
              height: 800.h,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Audio",
                      style: TextStyle(
                        fontSize: 45.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: "DMSans",
                        color: AppColors.whiteColor,
                      ),
                    ),
                    Text(
                      "It's modular and designed to last",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.whiteColor,
                      ),
                    ),
                    SizedBox(height: 150.h),
                    const Input(),
                    SizedBox(height: 30.h),
                    const EntryWithSocialMedia(),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "If you have an account?",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(context).push(
                            CupertinoPageRoute(
                              builder: (context) => const SignInScreen(),
                            ),
                          ),
                          child: Text(
                            "Sign In here",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColors.mainColor,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
