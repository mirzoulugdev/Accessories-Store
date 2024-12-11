import '../widgets/explore_filter.dart';
import '../widgets/products.dart';
import '../../../../core/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            onPressed: () {},
            icon: Image.asset(
              AppIcons.shoppingCartIcon,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                Text(
                  "Headphone",
                  style: TextStyle(fontSize: 16.sp, fontFamily: "DMSans"),
                ),
                SizedBox(height: 10.h),
                Text(
                  "TMA Wireless",
                  style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Montserrat",
                  ),
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    const ExploreFilter(),
                    SizedBox(width: 5.w),
                    SizedBox(
                      width: 240.w,
                      height: 35,
                      child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return TextButton(
                            onPressed: () {},
                            child: Text(
                              "Popularity",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300,
                                fontFamily: "DMSans",
                                color: Colors.black,
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 35.h),
          const Products(),
        ],
      ),
    );
  }
}
