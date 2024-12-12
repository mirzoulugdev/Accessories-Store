import 'package:accessories_store/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommentsWidget extends StatelessWidget {
  const CommentsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity.w,
      height: 300.h,
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return SizedBox(
              width: 400.w,
              height: 130.h,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1633332755192-727a05c4013d?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fG1hbiUyMGF2YXRhcnxlbnwwfHwwfHx8MA%3D%3D"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: SizedBox(
                      width: 270.w,
                      height: 200.h,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Madelina",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontFamily: 'DMSans',
                                ),
                              ),
                              const Text(
                                "1 month ago",
                                style: TextStyle(
                                  color: AppColors.greyColor,
                                  fontFamily: "DMSans",
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Icon(
                                Icons.star_rounded,
                                color: Colors.amber,
                              ),
                              Icon(Icons.star_rounded, color: Colors.amber),
                              Icon(Icons.star_rounded, color: Colors.amber),
                              Icon(Icons.star_rounded, color: Colors.amber),
                              Icon(Icons.star_rounded, color: Colors.amber),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          SizedBox(
                            width: 260.w,
                            height: 90,
                            child: const Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                              style: TextStyle(
                                fontFamily: "DMSans",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
