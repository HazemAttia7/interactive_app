import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:interactive_app/features/home/presentation/views/widgets/neumorphic_buttons_row.dart';

class NeumorphicButtonsSection extends StatefulWidget {
  const NeumorphicButtonsSection({super.key});

  @override
  State<NeumorphicButtonsSection> createState() =>
      _NeumorphicButtonsSectionState();
}

class _NeumorphicButtonsSectionState extends State<NeumorphicButtonsSection> {
  bool _startAnimation = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 650), () {
      if (mounted) setState(() => _startAnimation = true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: _startAnimation ? 1 : 0),
      duration: const Duration(milliseconds: 650),
      curve: Curves.easeInOut,
      builder: (BuildContext context, double val, Widget? child) {
        return Padding(
          padding: EdgeInsets.only(top: (1 - val) * 10),
          child: Opacity(opacity: val, child: child),
        );
      },
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Neumorphic Buttons", style: TextStyle(fontSize: 16)),
            Gap(15),
            NeumorphicButtonsRow(),
          ],
        ),
      ),
    );
  }
}
