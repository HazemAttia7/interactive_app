import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AnimationShowcaseView extends StatelessWidget {
  final String title;
  final Widget child;

  const AnimationShowcaseView({
    super.key,
    required this.child,
    this.title = "Showcase",
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => Navigator.pop(context),
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
              child: Container(color: Colors.white.withValues(alpha: 0.08)),
            ),
            SafeArea(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Gap(20),
                    child,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
