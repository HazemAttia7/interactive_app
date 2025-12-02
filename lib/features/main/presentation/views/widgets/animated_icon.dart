import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimatedIcon extends StatelessWidget {
  const AnimatedIcon({super.key, required this.isSelected, required this.icon});

  final bool isSelected;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return AnimatedDefaultTextStyle(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      style: TextStyle(
        fontSize: isSelected ? 22 : 20,
        color: isSelected ? Colors.white : Colors.black,
      ),
      child: TweenAnimationBuilder<double>(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        tween: Tween<double>(begin: 0.0, end: isSelected ? 1.0 : 0.0),
        builder: (context, value, child) {
          return Icon(
            icon,
            size: (20 + (2 * value)).sp,
            color: Color.lerp(Theme.of(context).colorScheme.primary, Colors.white, value),
          );
        },
      ),
    );
  }
}
