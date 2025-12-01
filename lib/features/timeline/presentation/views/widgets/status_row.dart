import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatusRow extends StatelessWidget {
  final String status;
  final Color statusColor;
  const StatusRow({super.key, required this.status, required this.statusColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8.sp,
      children: [
        Container(
          width: 8.sp,
          height: 8.sp,
          decoration:  BoxDecoration(
            shape: BoxShape.circle,
            color: statusColor,
          ),
        ),
        Text(
          status,
          style: TextStyle(fontSize: 12.sp, color: statusColor),
        ),
      ],
    );
  }
}
