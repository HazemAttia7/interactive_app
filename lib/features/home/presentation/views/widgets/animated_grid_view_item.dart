import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:interactive_app/features/home/presentation/views/widgets/gradient_icon_container.dart';

class AnimatedGridViewItem extends StatelessWidget {
  final IconData icon;
  final List<Color> gradientColors;
  final String title, subtitle;
  const AnimatedGridViewItem({
    super.key,
    required this.icon,
    required this.gradientColors,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300, width: 1.sp),
        borderRadius: BorderRadius.circular(24.r),
        color: const Color(0xffF9FAFB),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 8.sp,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GradientIconContainer(icon: icon, gradientColors: gradientColors),
          Gap(8.sp),
          Text(title, style: TextStyle(fontSize: 14.sp)),
          Text(
            subtitle,
            style: TextStyle(fontSize: 14.sp, color: Colors.black45),
          ),
        ],
      ),
    );
  }
}
