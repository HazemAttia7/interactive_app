import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BubbleTag extends StatelessWidget {
  final String text;
  const BubbleTag({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.sp),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: .17),
        borderRadius: BorderRadius.circular(1000.r),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 16.sp),
      ),
    );
  }
}
