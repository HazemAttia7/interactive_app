import 'package:flutter/material.dart';

class StaggeredAnimatedScaleItem extends StatefulWidget {
  final Duration delay;
  final Duration duration;
  final Curve curve;
  final Widget child;

  const StaggeredAnimatedScaleItem({
    super.key,
    this.delay = const Duration(milliseconds: 0),
    required this.child,
    this.duration = const Duration(milliseconds: 600),
    this.curve = Curves.easeInOutExpo,
  });

  @override
  State<StaggeredAnimatedScaleItem> createState() =>
      _StaggeredAnimatedScaleItemState();
}

class _StaggeredAnimatedScaleItemState
    extends State<StaggeredAnimatedScaleItem> {
  bool visible = false;

  @override
  void initState() {
    super.initState();

    widget.delay.inMilliseconds > 0
        ? Future.delayed(widget.delay, () {
            if (mounted) setState(() => visible = true);
          })
        : setState(() => visible = true);
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: visible ? 1 : 0),
      duration: widget.duration,
      curve: widget.curve,
      builder: (context, value, child) {
        return Transform.scale(scale: value, child: child);
      },
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: visible ? 1 : 0),
        duration: const Duration(milliseconds: 650),
        curve: Curves.easeInOut,
        builder: (context, double value, Widget? child) {
          return Opacity(opacity: value, child: widget.child);
        },
      ),
    );
  }
}
