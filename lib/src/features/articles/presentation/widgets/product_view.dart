import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_icons.dart';
import '../../../../core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.h,
      width: double.infinity.w,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 160.h,
              width: 310.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 180.w,
                        height: 110.h,
                        child: Text(
                          textAlign: TextAlign.start,
                          "TMA-2 Modular Headphone",
                          style: TextStyle(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Image.asset(
                        AppImages.headphoneImage,
                        height: 120.h,
                        width: 100.w,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Shop now",
                        style: TextStyle(
                          color: AppColors.mainColor,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Image.asset(AppIcons.arrowIcon),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
