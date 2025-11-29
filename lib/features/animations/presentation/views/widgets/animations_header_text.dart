import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimationsHeaderText extends StatelessWidget {
  const AnimationsHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      duration: const Duration(milliseconds: 450),
      tween: Tween(begin: 0, end: 1),
      curve: Curves.easeInOutBack,
      builder: (context, slideValue, child) {
        return Padding(
          padding: EdgeInsets.only(
            top: (slideValue * 30.sp).clamp(0, double.infinity),
          ),
          child: child,
        );
      },
      child: TweenAnimationBuilder<double>(
        duration: const Duration(milliseconds: 550),
        tween: Tween(begin: 0, end: 1),
        curve: Curves.easeInOut,
        builder: (context, opacityValue, child) {
          return Opacity(opacity: opacityValue, child: child);
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.sp),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Animations",
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Smooth transitions and effects",
                  style: TextStyle(fontSize: 16.sp),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
