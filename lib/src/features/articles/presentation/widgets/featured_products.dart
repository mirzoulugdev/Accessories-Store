import '../../../../core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedProducts extends StatelessWidget {
  const FeaturedProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 175.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 130.w,
              height: 170.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Image.asset(
                    AppImages.headphoneImage,
                  ),
                  Text("TMA-2 HD Wireless"),
                  Text("USD 350"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
