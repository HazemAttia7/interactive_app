import 'package:flutter/material.dart';

class StaggeredAnimatedListItem extends StatelessWidget {
  final int index;
  final Widget child;
  final AnimationController animationController;
  const StaggeredAnimatedListItem({
    super.key,
    required this.child,
    required this.animationController,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final double start = index * .1;
    final double end = start + 0.5;

    final Animation<Offset> animation =
        Tween<Offset>(
          begin: const Offset(-1, 0),
          end: const Offset(0, 0),
        ).animate(
          CurvedAnimation(
            parent: animationController,
            curve: Interval(
              start.clamp(0, 1),
              end.clamp(0, 1),
              curve: Curves.easeOutBack,
            ),
          ),
        );

    return SlideTransition(position: animation, child: child);
  }
}
