import 'package:flutter/material.dart';

class GradientIconContainer extends StatelessWidget {
  final IconData icon;
  final List<Color> gradientColors;
  const GradientIconContainer({super.key, required this.icon, required this.gradientColors});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient:  RadialGradient(
          colors: gradientColors,
          center: Alignment.topLeft,
          radius: 1.3,
        ),
      ),
      child:  Icon(icon, color: Colors.white),
    );
  }
}
