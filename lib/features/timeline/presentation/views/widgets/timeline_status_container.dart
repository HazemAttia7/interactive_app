import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class TimelineStatusContainer extends StatelessWidget {
  final Color backColor, textColor;
  final int count;
  final String status;
  const TimelineStatusContainer({super.key, required this.backColor, required this.textColor, required this.count, required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      padding: EdgeInsets.all(16.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            count.toString(),
            style: TextStyle(fontSize: 16.sp, color: textColor),
          ),
          Gap(5.sp),
          Text(status, style: TextStyle(fontSize: 16.sp)),
        ],
      ),
    );
  }
}
