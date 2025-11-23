import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeHeaderText extends StatelessWidget {
  const HomeHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: 1),
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
      builder: (BuildContext context, double val, Widget? child) {
        return Padding(
          padding: EdgeInsets.only(left: val * 16),
          child: Opacity(opacity: val, child: child),
        );
      },
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Flutter UI Demo", style: TextStyle(fontSize: 24)),
          Gap(5),
          Text("Explore modern components", style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
