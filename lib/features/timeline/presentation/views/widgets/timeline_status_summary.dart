import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:interactive_app/core/widgets/staggered_animated_scale_item.dart';
import 'package:interactive_app/features/timeline/presentation/views/widgets/timeline_status_container.dart';

class TimelineStatusSummary extends StatelessWidget {
  const TimelineStatusSummary({super.key});

  Map<String, Color> _getStatusColors(BuildContext context, String status) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    switch (status) {
      case 'Done':
        return {
          'back': isDark ? const Color(0xff1A3D2A) : const Color(0xffCCF3E1),
          'text': isDark ? const Color(0xff4ADE80) : const Color(0xff00A63E),
        };
      case 'Active':
        return {
          'back': isDark ? const Color(0xff1A2840) : const Color(0xffCCECFC),
          'text': isDark ? const Color(0xff60A5FA) : const Color(0xff155DFC),
        };
      case 'Pending':
        return {
          'back': isDark ? Color(0xff2A2C30) : const Color(0xffDEE0E3),
          'text': isDark ? const Color(0xffA1A1AA) : Colors.black,
        };
      default:
        return {'back': Colors.grey, 'text': Colors.black};
    }
  }

  @override
  Widget build(BuildContext context) {
    const delay = 150;
    final doneColors = _getStatusColors(context, 'Done');
    final activeColors = _getStatusColors(context, 'Active');
    final pendingColors = _getStatusColors(context, 'Pending');

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.sp),
      child: Row(
        children: [
          Expanded(
            child: StaggeredAnimatedScaleItem(
              child: TimelineStatusContainer(
                backColor: doneColors['back']!,
                textColor: doneColors['text']!,
                count: 2,
                status: 'Done',
              ),
            ),
          ),
          const Gap(10),
          Expanded(
            child: StaggeredAnimatedScaleItem(
              delay: const Duration(milliseconds: delay),
              child: TimelineStatusContainer(
                backColor: activeColors['back']!,
                textColor: activeColors['text']!,
                count: 1,
                status: 'Active',
              ),
            ),
          ),
          const Gap(10),
          Expanded(
            child: StaggeredAnimatedScaleItem(
              delay: const Duration(milliseconds: delay * 2),
              child: TimelineStatusContainer(
                backColor: pendingColors['back']!,
                textColor: pendingColors['text']!,
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
