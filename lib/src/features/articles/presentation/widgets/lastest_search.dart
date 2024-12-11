import '../../../../core/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LastestSearch extends StatefulWidget {
  const LastestSearch({super.key});

  @override
  State<LastestSearch> createState() => _LastestSearchState();
}

class _LastestSearchState extends State<LastestSearch> {
  List<String> lastestSearch = [
    "TMA 2 Wireless",
    'Cable',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      width: 380.w,
      child: ListView.builder(
        itemCount: lastestSearch.length,
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppIcons.clockIcon,
              ),
              SizedBox(width: 10.w),
              Text(
                lastestSearch[index],
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.black,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  AppIcons.removeIcon,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
