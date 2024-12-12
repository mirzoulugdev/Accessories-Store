import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExploreFilter extends StatefulWidget {
  const ExploreFilter({super.key});

  @override
  State<ExploreFilter> createState() => _ExploreFilterState();
}

class _ExploreFilterState extends State<ExploreFilter> {
  List<Map<String, dynamic>> sortOptions = [
    {'title': "Popularity", 'isTrue': true},
    {'title': "Newest", 'isTrue': false},
    {'title': "Oldest", 'isTrue': false},
    {'title': "High Price", 'isTrue': false},
    {'title': "Low Price", 'isTrue': false},
    {'title': "Review", 'isTrue': false},
  ];

  final List<String> categories = [
    "Headphone",
    "Speaker",
    "Smartwatch",
    "Camera",
    "Laptop"
  ];

  void showFilterMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      // isDismissible: false,
      builder: (context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setModalState) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Filter",
                          style: TextStyle(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(Icons.close),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      "Category",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      width: double.infinity,
                      height: 35.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40.r),
                                color: AppColors.mainColor,
                              ),
                              child: Text(
                                categories[index],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Text(
                      "Sort By",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: sortOptions.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 3,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setModalState(() {
                              for (var option in sortOptions) {
                                option['isTrue'] = false;
                              }
                              sortOptions[index]['isTrue'] = true;
                            });
                            setState(() {});
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              color: sortOptions[index]['isTrue']
                                  ? AppColors.mainColor
                                  : Colors.white,
                              border: sortOptions[index]['isTrue']
                                  ? null
                                  : Border.all(width: 1.w, color: Colors.grey),
                            ),
                            child: Text(
                              sortOptions[index]['title'],
                              style: TextStyle(
                                color: sortOptions[index]['isTrue']
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 20.h),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.mainColor,
                        ),
                        child: Text(
                          "Apply Filter",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showFilterMenu(context),
      child: Container(
        alignment: Alignment.center,
        width: 90.w,
        height: 35.h,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1.w),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppIcons.filterIcon),
            SizedBox(width: 5.w),
            Text(
              "Filter",
              style: TextStyle(
                fontSize: 15.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
