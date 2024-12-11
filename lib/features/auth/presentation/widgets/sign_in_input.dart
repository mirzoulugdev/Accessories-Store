import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_icons.dart';

class SignInInput extends StatefulWidget {
  const SignInInput({super.key});

  @override
  State<SignInInput> createState() => _SignInInputState();
}

class _SignInInputState extends State<SignInInput> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController emailController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();

  void _save() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Image.asset(AppIcons.emailIcon),
              filled: true,
              fillColor: Colors.white,
              hintText: "Email",
              hintStyle: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w300,
                color: AppColors.greyColor,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.r),
                borderSide: BorderSide.none,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Iltimos emailingizni kiriting!";
              } else if (!value.contains("@")) {
                return "Iltimos emailingizni to'g'ri formatda kiriting!";
              }
              return null;
            },
            controller: emailController,
          ),
          SizedBox(height: 20.h),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Image.asset(AppIcons.lockIcon),
              filled: true,
              fillColor: Colors.white,
              hintText: "Password",
              hintStyle: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w300,
                color: AppColors.greyColor,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.r),
                borderSide: BorderSide.none,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Iltimos parolingizni kiriting!";
              } else if (value.length < 8) {
                return "Parol kamida 8 ta belgidan kam bo'lmasligi kerak";
              }
              return null;
            },
            controller: passwordController,
          ),
          SizedBox(height: 20.h),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Forgot Password",
              style: TextStyle(
                fontSize: 18,
                color: AppColors.whiteColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 20.h),
          InkWell(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              width: double.infinity.w,
              height: 50.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: AppColors.mainColor,
              ),
              child: Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 18.sp,
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
