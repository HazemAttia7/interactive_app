import 'package:flutter/material.dart' hide BoxShadow, BoxDecoration;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NeumorphicButton extends StatefulWidget {
  final VoidCallback onTap;
  const NeumorphicButton({super.key, required this.onTap});

  @override
  State<NeumorphicButton> createState() => _NeumorphicButtonState();
}

class _NeumorphicButtonState extends State<NeumorphicButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    Offset distance = isPressed ? Offset(4.sp, 4.sp) : Offset(8.sp, 8.sp);
    double blur = isPressed ? 10 : 20;

    return GestureDetector(
      onTap: () {
        setState(() {
          isPressed = !isPressed;
        });
        widget.onTap();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        width: 70.sp,
        height: 70.sp,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
              blurRadius: blur,
              offset: distance,
              color: Theme.of(context).shadowColor,
              inset: isPressed,
            ),
            BoxShadow(
              blurRadius: blur,
              offset: -distance,
              color: Theme.of(context).colorScheme.shadow,
              inset: isPressed,
            ),
          ],
        ),
        child: Center(
          child: Text(
            "button",
            style: TextStyle(color: isPressed ? Colors.grey : null),
          ),
        ),
      ),
    );
  }
}
