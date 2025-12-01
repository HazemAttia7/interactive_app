import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:interactive_app/features/animations/presentation/views/widgets/animations_header_text.dart';
import 'package:interactive_app/features/timeline/presentation/views/widgets/animated_timeline.dart';
import 'package:interactive_app/features/timeline/presentation/views/widgets/timeline_status_summary.dart';

class TimelineViewBody extends StatelessWidget {
  const TimelineViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Gap(10.sp),
          const AnimatedTopPaddingHeaderText(
            title: "Activity Timeline",
            subtitle: "Track your project progress",
          ),
          Gap(25.sp),
          const TimelineStatusSummary(),
          Gap(25.sp),
          const AnimatedTimeLine(),
        ],
      ),
    );
  }
}
