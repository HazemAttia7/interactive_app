import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interactive_app/core/utils/app_colors.dart';

class ActiveAnimatedWidget extends StatefulWidget {
  const ActiveAnimatedWidget({super.key});

  @override
  State<ActiveAnimatedWidget> createState() => _ActiveAnimatedWidgetState();
}

class _ActiveAnimatedWidgetState extends State<ActiveAnimatedWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: AppColors.activeGradient,
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.circle_outlined,
                  color: Colors.white,
                  size: 22.sp,
                ),
              ),
            ),
            Opacity(
              opacity: (1 - _animation.value).toDouble(),
              child: Transform.scale(
                scale: (1 + _animation.value * .35).toDouble(),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.activeGradient[0].withValues(alpha: 0.6),
                  ),
                  padding: EdgeInsets.all((5 * _animation.value).sp),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
