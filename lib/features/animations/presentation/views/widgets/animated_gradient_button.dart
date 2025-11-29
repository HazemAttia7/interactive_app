import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interactive_app/core/utils/app_colors.dart';

class AnimatedGradientButton extends StatefulWidget {
  final String text;
  final VoidCallback onTap;
  final Duration delay;
  const AnimatedGradientButton({
    super.key,
    required this.text,
    required this.onTap,
    this.delay = const Duration(seconds: 0),
  });

  @override
  State<AnimatedGradientButton> createState() => _AnimatedGradientButtonState();
}

class _AnimatedGradientButtonState extends State<AnimatedGradientButton> {
  bool visible = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(widget.delay, () => setState(() => visible = true));
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<Offset>(
      duration: const Duration(seconds: 1),
      tween: Tween<Offset>(
        begin: const Offset(-100, 0),
        end: visible ? const Offset(0, 0) : const Offset(-100, 0),
      ),
      curve: Curves.elasticOut,
      builder: (context, Offset value, Widget? child) {
        return Transform.translate(offset: value, child: child);
      },
      child: GestureDetector(
        onTap: widget.onTap,
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
              widget.text,
              style: TextStyle(color: Colors.white, fontSize: 16.sp),
            ),
          ),
        ),
      ),
    );
  }
}
