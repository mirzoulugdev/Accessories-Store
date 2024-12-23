import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_icons.dart';

class Input extends StatefulWidget {
  const Input({super.key});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
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
              hintText: "Email",
              hintStyle: const TextStyle(
                fontSize: 16,
                color: AppColors.greyColor,
                fontWeight: FontWeight.w400,
              ),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
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
          const SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Image.asset(AppIcons.lockIcon),
              hintText: "Password",
              hintStyle: const TextStyle(
                fontSize: 16,
                color: AppColors.greyColor,
                fontWeight: FontWeight.w400,
              ),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Iltimos parolingizni kiriting!";
              } else if (value.length < 8) {
                return "Iltimos parolingiz 8 ta belgidan kam bo'lmasligi kerak";
              }
              return null;
            },
            controller: passwordController,
          ),
          const SizedBox(height: 25),
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
                "Sign Up",
                style: TextStyle(
                  fontSize: 18.sp,
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
