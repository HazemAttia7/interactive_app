import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeHeaderText extends StatelessWidget {
  const HomeHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: 1),
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
      builder: (BuildContext context, double val, Widget? child) {
        return Padding(
          padding: EdgeInsets.only(left: val * 16.w),
          child: Opacity(opacity: val, child: child),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Flutter UI Demo",
            style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w500),
          ),
          Text("Explore modern components", style: TextStyle(fontSize: 16.sp)),
        ],
      ),
    );
  }
}
