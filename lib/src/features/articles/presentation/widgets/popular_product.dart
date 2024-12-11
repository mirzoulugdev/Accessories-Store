import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_images.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 310.h,
      width: 380.w,
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 70.w,
                    height: 70.h,
                    decoration: BoxDecoration(
                      color: AppColors.greyColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Image.asset(
                      AppImages.headphoneImage,
                    ),
                  ),
                  SizedBox(width: 15.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "TMA-2 Comfort Wireless",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        "USD 270",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star_rounded,
                            color: Colors.amber,
                          ),
                          const Text("4.6"),
                          SizedBox(width: 15.w),
                          const Text("86 Reviews"),
                          SizedBox(width: 80.w),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.more_vert_rounded,
                              color: AppColors.greyColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
