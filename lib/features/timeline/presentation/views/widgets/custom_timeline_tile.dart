import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:interactive_app/core/enums/status_enum.dart';
import 'package:interactive_app/core/utils/app_colors.dart';
import 'package:interactive_app/core/widgets/staggered_animated_scale_item.dart';
import 'package:interactive_app/core/widgets/staggered_animated_slide_item.dart';
import 'package:interactive_app/features/timeline/presentation/views/widgets/active_animated_widget.dart';
import 'package:interactive_app/features/timeline/presentation/views/widgets/timeline_end_child.dart';
import 'package:timeline_tile/timeline_tile.dart';

class CustomTimelineTile extends StatelessWidget {
  final bool isFirst, isLast;
  final enTimelineStatus enStatus;
  final String title, subtitle;
  final String? statusText;
  final Color? statusColor, backColor;
  final List<Color>? iconGradientBackColor;
  final IconData? icon;
  final String? timeText;
  final DateTime? time;
  final double? iconSize;
  final Duration? delay;
  const CustomTimelineTile({
    super.key,
    this.isFirst = false,
    this.isLast = false,
    required this.enStatus,
    required this.title,
    required this.subtitle,
    this.statusText,
    this.statusColor,
    this.backColor,
    this.iconGradientBackColor,
    this.icon,
    this.timeText,
    this.time,
    this.iconSize,
    this.delay,
  });

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      isFirst: isFirst,
      isLast: isLast,
      indicatorStyle: IndicatorStyle(
        width: 45.sp,
        height: 45.sp,
        indicatorXY: 0.0,
        indicator: StaggeredAnimatedScaleItem(
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOutBack,
          delay: delay ?? const Duration(milliseconds: 0),
          child: (enStatus == enTimelineStatus.active)
              ? const ActiveAnimatedWidget()
              : Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors:
                          iconGradientBackColor ?? _getIconBackColor(enStatus),
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    icon ?? _getIcon(enStatus),
                    color: Colors.white,
                    size: iconSize ?? 22.sp,
                  ),
                ),
        ),
      ),
      beforeLineStyle: LineStyle(color: Colors.black45, thickness: 2.sp),
      endChild: StaggeredAnimatedSlideItem(
        delay: delay ?? const Duration(milliseconds: 0),
        child: TimelineEndChild(
          title: title,
          subtitle: subtitle,
          enStatus: enStatus,
          statusText: statusText,
          time: time ?? DateTime.now(),
          timeText: timeText,
          backColor: backColor,
          statusColor: statusColor,
        ),
      ),
    );
  }

  List<Color> _getIconBackColor(enTimelineStatus status) {
    switch (status) {
      case enTimelineStatus.done:
        return AppColors.doneGradient;
      case enTimelineStatus.pending:
        return AppColors.pendingGradient;
      case enTimelineStatus.active:
        return AppColors.activeGradient;
    }
  }

  IconData _getIcon(enTimelineStatus status) {
    switch (status) {
      case enTimelineStatus.done:
        return FontAwesomeIcons.circleCheck;
      case enTimelineStatus.pending:
        return FontAwesomeIcons.clock;
      case enTimelineStatus.active:
        return Icons.circle_outlined;
    }
  }
}
