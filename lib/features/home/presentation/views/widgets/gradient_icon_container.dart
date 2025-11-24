import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interactive_app/core/utils/gradients.dart';

class GradientIconContainer extends StatelessWidget {
  final IconData icon;
  final List<Color> gradientColors;
  const GradientIconContainer({
    super.key,
    required this.icon,
    required this.gradientColors,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.sp),
        gradient: Gradients.radialGradient(gradientColors: gradientColors),
      ),
      child: Icon(icon, color: Colors.white, size: 24.sp),
    );
  }
}
