import 'package:flutter/material.dart' hide BoxShadow, BoxDecoration;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

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
    Offset distance = isPressed ? const Offset(4, 4) : const Offset(10, 10);
    double blur = isPressed ? 10 : 25;

    return GestureDetector(
      onTap: () {
        setState(() {
          isPressed = !isPressed;
        });
        widget.onTap();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              blurRadius: blur,
              offset: distance,
              color: const Color(0xFFA7A9AF),
              inset: isPressed,
            ),
            BoxShadow(
              blurRadius: blur,
              offset: -distance,
              color: Colors.white,
              inset: isPressed,
            ),
          ],
        ),
        child: Center(
          child: Text(
            "button",
            style: TextStyle(color: isPressed ? Colors.grey : Colors.black),
          ),
        ),
      ),
    );
  }
}
