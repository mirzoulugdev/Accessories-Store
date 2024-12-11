import 'package:accessories_store/core/utils/app_colors.dart';
import 'package:accessories_store/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EntryWithSocialMedia extends StatelessWidget {
  const EntryWithSocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          width: 50.w,
          height: 50.h,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: Image.asset(
            AppImages.appleLogo,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 15.w),
        Container(
          alignment: Alignment.center,
          width: 50.w,
          height: 50.h,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: Image.asset(
            AppImages.facebookLogo,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 15.w),
        Container(
          alignment: Alignment.center,
          width: 50.w,
          height: 50.h,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: Image.asset(
            AppImages.googleLogo,
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}
