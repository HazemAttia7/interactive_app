import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interactive_app/core/enums/status_enum.dart';
import 'package:interactive_app/core/helper/fomat_time_ago.dart';
import 'package:interactive_app/core/utils/app_colors.dart';
import 'package:interactive_app/features/timeline/presentation/views/widgets/status_row.dart';

class TimelineEndChild extends StatelessWidget {
  final String title, subtitle;
  final String? statusText, timeText;
  final enTimelineStatus enStatus;
  final Color? backColor, statusColor;
  final DateTime? time;
  const TimelineEndChild({
    super.key,
    required this.title,
    required this.subtitle,
    required this.enStatus,
    this.time,
    this.statusText,
    this.backColor,
    this.statusColor,
    this.timeText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16.w, bottom: 20.h),
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        color: _getBackColor(context),
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: Theme.of(context).colorScheme.outline,
          width: 1.sp,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: Text(
              timeText ?? _getTimeText(enStatus, time),
              style: TextStyle(
                fontSize: 12.sp,
                color: statusColor ?? _getStatusColor(context, enStatus),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8.sp,
            children: [
              Text(title, style: TextStyle(fontSize: 16.sp)),
              Text(subtitle, style: TextStyle(fontSize: 14.sp)),
              StatusRow(
                status: statusText ?? _getStatusText(enStatus),
                statusColor: statusColor ?? _getStatusColor(context, enStatus),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Color? _getBackColor(BuildContext context) {
    if (backColor != null) {
      if (Theme.of(context).brightness == Brightness.dark) {
        return AppColors.toDarkMode(backColor);
      }
      return backColor;
    }

    return _getStatusBackColor(context, enStatus);
  }

  String _getStatusText(enTimelineStatus status) {
    switch (status) {
      case enTimelineStatus.done:
        return 'Completed';
      case enTimelineStatus.pending:
        return 'Pending';
      case enTimelineStatus.active:
        return 'Active';
    }
  }

  Color _getStatusBackColor(BuildContext context, enTimelineStatus status) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    switch (status) {
      case enTimelineStatus.done:
        return isDark ? const Color(0xff1A3D2A) : const Color(0xffE5FAEE);
      case enTimelineStatus.pending:
        return isDark ? const Color(0xff2A2C30) : const Color(0xffF0F0F2);
      case enTimelineStatus.active:
        return isDark ? const Color(0xff1A2840) : const Color(0xffE9F2FF);
    }
  }

  Color _getStatusColor(BuildContext context, enTimelineStatus status) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    switch (status) {
      case enTimelineStatus.done:
        return const Color(0xff00C951);
      case enTimelineStatus.pending:
        return isDark ? const Color(0xff848a9a) : const Color(0xff6A7282);
      case enTimelineStatus.active:
        return const Color(0xff2B7FFF);
    }
  }

  String _getTimeText(enTimelineStatus status, DateTime? time) {
    switch (status) {
      case enTimelineStatus.done:
      case enTimelineStatus.active:
        if (time == null) return 'Unknown';
        return formatTimeAgo(time);
      case enTimelineStatus.pending:
        return "Upcoming";
    }
  }
}
