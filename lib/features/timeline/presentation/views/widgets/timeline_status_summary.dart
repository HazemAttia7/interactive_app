import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:interactive_app/core/widgets/staggered_animated_scale_item.dart';
import 'package:interactive_app/features/timeline/presentation/views/widgets/timeline_status_container.dart';

class TimelineStatusSummary extends StatelessWidget {
  const TimelineStatusSummary({super.key});

  @override
  Widget build(BuildContext context) {
    const delay = 150;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.sp),
      child: const Row(
        children: [
          Expanded(
            child: StaggeredAnimatedScaleItem(
              child: TimelineStatusContainer(
                backColor: Color(0xffCCF3E1),
                textColor: Color(0xff00A63E),
                count: 2,
                status: 'Done',
              ),
            ),
          ),
          Gap(10),
          Expanded(
            child: StaggeredAnimatedScaleItem(
              delay: Duration(milliseconds: delay),
              child: TimelineStatusContainer(
                backColor: Color(0xffCCECFC),
                textColor: Color(0xff155DFC),
                count: 1,
                status: 'Active',
              ),
            ),
          ),
          Gap(10),
          Expanded(
            child: StaggeredAnimatedScaleItem(
              delay: Duration(milliseconds: delay * 2),
              child: TimelineStatusContainer(
                backColor: Color(0xffDEE0E3),
                textColor: Colors.black,
                count: 2,
                status: 'Pending',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
