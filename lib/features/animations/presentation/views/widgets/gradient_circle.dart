
import 'package:flutter/material.dart';
import 'package:interactive_app/core/utils/app_colors.dart';
import 'package:interactive_app/core/utils/gradients.dart';

class GradientCircle extends StatelessWidget {
  const GradientCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: Gradients.radialGradient(
          gradientColors: AppColors.darkPurpleGradient,
        ),
      ),
    );
  }
}
