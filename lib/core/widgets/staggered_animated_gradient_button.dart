import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interactive_app/core/utils/app_colors.dart';
import 'package:interactive_app/core/widgets/staggered_animated_slide_item.dart';

class StaggeredAnimatedGradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Duration delay;
  const StaggeredAnimatedGradientButton({
    super.key,
    required this.text,
    required this.onTap,
    this.delay = const Duration(seconds: 0),
  });

  @override
  Widget build(BuildContext context) {
    return StaggeredAnimatedSlideItem(
      delay: delay,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 18.sp),
          margin: EdgeInsets.symmetric(horizontal: 16.sp),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: AppColors.darkPurpleGradient,
              stops: [.15, 1],
            ),
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 16.sp),
            ),
          ),
        ),
      ),
    );
  }
}
