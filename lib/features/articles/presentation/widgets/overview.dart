import 'package:accessories_store/core/utils/app_colors.dart';
import 'package:accessories_store/core/utils/app_images.dart';
import 'package:accessories_store/features/articles/presentation/widgets/comments_widget.dart';
import 'package:accessories_store/features/articles/presentation/widgets/featured_products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Overview extends StatefulWidget {
  const Overview({super.key});

  @override
  State<Overview> createState() => _OverviewState();
}

class _OverviewState extends State<Overview> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h),
        SizedBox(
          width: 400.w,
          height: 350.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  alignment: Alignment.center,
                  width: 250.w,
                  // height: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: AppColors.greyColor.withOpacity(0.1),
                  ),
                  child: Image.asset(
                    AppImages.seconHeadphoneImage,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 20.h),
        Text(
          "Review (102)",
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            fontFamily: "DMSans",
          ),
        ),
        SizedBox(height: 30.h),
        const CommentsWidget(),
        SizedBox(height: 20.h),
        TextButton(
          onPressed: () {},
          child: Text(
            "See All Reviews",
            style: TextStyle(
              color: AppColors.greyColor,
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
            ),
          ),
        ),
        SizedBox(height: 15.h),
        Container(
          width: 377.w,
          height: 260.h,
          color: AppColors.greyColor.withOpacity(0.1),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Another Product",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: "DMSans",
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See All",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.greyColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                const FeaturedProducts(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
