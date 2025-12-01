import 'package:flutter/material.dart';

class StaggeredAnimatedSlideItem extends StatefulWidget {
  final Duration delay;
  final Widget child;
  const StaggeredAnimatedSlideItem({
    super.key,
    this.delay = const Duration(seconds: 0),
    required this.child,
  });

  @override
  State<StaggeredAnimatedSlideItem> createState() =>
      _StaggeredAnimatedSlideItemState();
}

class _StaggeredAnimatedSlideItemState
    extends State<StaggeredAnimatedSlideItem> {
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
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: visible ? 1 : 0),
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOut,
        builder: (context, double value, Widget? child) {
          return Opacity(opacity: value, child: widget.child);
        },
      ),
    );
  }
}
