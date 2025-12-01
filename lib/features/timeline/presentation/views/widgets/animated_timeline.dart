import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interactive_app/core/enums/status_enum.dart';
import 'package:interactive_app/core/utils/app_colors.dart';
import 'package:interactive_app/features/timeline/presentation/views/widgets/custom_timeline_tile.dart';

class AnimatedTimeLine extends StatelessWidget {
  const AnimatedTimeLine({super.key});

  @override
  Widget build(BuildContext context) {
    const delay = 100;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.sp),
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          CustomTimelineTile(
            isFirst: true,
            enStatus: enTimelineStatus.done,
            title: "Project Started",
            subtitle: "Initial setup and configuration completed",
            time: DateTime.now().subtract(const Duration(hours: 2)),
          ),
          CustomTimelineTile(
            enStatus: enTimelineStatus.done,
            title: "Design Phase",
            subtitle: "UI/UX design mockups created",
            time: DateTime.now().subtract(const Duration(hours: 1)),
            delay: const Duration(milliseconds: delay * 1),
          ),
          CustomTimelineTile(
            enStatus: enTimelineStatus.active,
            title: "Development",
            subtitle: "Currently implementing features",
            time: DateTime.now(),
            delay: const Duration(milliseconds: delay * 2),
          ),
          const CustomTimelineTile(
            enStatus: enTimelineStatus.pending,
            title: "Testing",
            subtitle: "Quality assurance and bug fixes",
            delay: Duration(milliseconds: delay * 3),
          ),
          CustomTimelineTile(
            isLast: true,
            enStatus: enTimelineStatus.pending,
            title: "Review Needed",
            subtitle: "Awaiting client feedback",
            icon: Icons.error_outline,
            iconSize: 26.sp,
            iconGradientBackColor: AppColors.orangeGradient,
            statusColor: AppColors.orangeGradient[1],
            statusText: "Warning",
            timeText: "Scheduled",
            backColor: const Color(0xffFFF0E5),
            delay: const Duration(milliseconds: delay * 4),
          ),
        ],
      ),
    );
  }
}
