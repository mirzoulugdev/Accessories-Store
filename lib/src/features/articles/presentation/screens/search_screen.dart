import '../widgets/lastest_search.dart';
import '../widgets/popular_product.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
        title: Text(
          "Search",
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Image.asset(AppIcons.searchIcon),
                  hintText: "Search headphone",
                  hintStyle: const TextStyle(
                    color: AppColors.greyColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                "Lastest search",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const LastestSearch(),
              Text(
                "Popular product",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 15.h),
              const PopularProduct(),
            ],
          ),
        ),
      ),
    );
  }
}
