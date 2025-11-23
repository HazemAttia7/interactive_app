import 'package:flutter/material.dart';

class StaggeredAnimatedGridItem extends StatefulWidget {
  final Duration delay;
  final Widget child;

  const StaggeredAnimatedGridItem({
    super.key,
    required this.delay,
    required this.child,
  });

  @override
  State<StaggeredAnimatedGridItem> createState() =>
      _StaggeredAnimatedGridItemState();
}

class _StaggeredAnimatedGridItemState extends State<StaggeredAnimatedGridItem> {
  bool visible = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(widget.delay, () {
      if (mounted) setState(() => visible = true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: visible ? 1 : 0),
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOutExpo,
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: Opacity(opacity: value, child: child),
        );
      },
      child: widget.child,
    );
  }
}
