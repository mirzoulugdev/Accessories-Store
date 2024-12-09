import 'package:accessories_store/presentation/screens/SignUp/screen/sign_up_screen.dart';
import 'package:flutter/cupertino.dart';

import '../widgets/sign_in_input.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  static const routeName = '/sign-in';

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.backgrounImage,
            width: double.infinity.w,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: SizedBox(
              width: double.infinity.w,
              height: 800.h,
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
                    SizedBox(height: 200.h),
                    const SignInInput(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Didn’t have any account?",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w200,
                            color: AppColors.whiteColor,
                          ),
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(context).push(
                            CupertinoPageRoute(
                              builder: (context) => const SignUpScreen(),
                            ),
                          ),
                          child: Text(
                            "Sign Up here",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColors.mainColor,
                              fontFamily: 'DMSans',
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
