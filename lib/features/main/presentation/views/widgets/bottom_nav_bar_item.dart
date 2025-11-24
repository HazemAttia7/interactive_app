import 'package:flutter/material.dart' hide AnimatedIcon;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interactive_app/features/main/presentation/views/widgets/animated_icon.dart';

class BottomNavBarItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;
  const BottomNavBarItem({
    super.key,
    required this.text,
    required this.icon,
    this.isSelected = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            padding: EdgeInsets.all(10.sp),
            decoration: BoxDecoration(
              gradient: isSelected
                  ? const RadialGradient(
                      colors: [Color(0xFF6694EA), Color(0xFF834FE4)],
                      center: Alignment.topLeft,
                      radius: 1.7,
                      stops: [0.4, 1],
                    )
                  : null,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: AnimatedIcon(isSelected: isSelected, icon: icon),
          ),
          AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            style: TextStyle(
              fontSize: isSelected ? 11.sp : 10.sp,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
              color: isSelected ? const Color(0xFF6694EA) : Colors.black,
            ),
            child: Text(text, style: TextStyle(fontSize: 14.sp)),
          ),
        ],
      ),
    );
  }
}
