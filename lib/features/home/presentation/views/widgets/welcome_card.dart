import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:interactive_app/features/home/presentation/views/widgets/android_ios_row.dart';

class WelcomeCard extends StatefulWidget {
  const WelcomeCard({super.key});

  @override
  State<WelcomeCard> createState() => _WelcomeCardState();
}

class _WelcomeCardState extends State<WelcomeCard> {
  bool _startAnimation = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 300), () {
      if (mounted) setState(() => _startAnimation = true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: _startAnimation ? 1 : 0),
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeInOut,
      builder: (BuildContext context, double val, Widget? child) {
        return Padding(
          padding: EdgeInsets.only(top: (1 - val) * 20),
          child: Opacity(opacity: val, child: child),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color(0xFF667EEA),
                Color(0xFFB366EA),
                Color(0xFFB366EA),
                Color(0xFFFF60A7),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              stops: [0, .45, .55, 1],
            ),
            borderRadius: BorderRadius.circular(24),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 16,
                spreadRadius: -5,
                offset: Offset(0, 10),
              ),
            ],
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome! 👋",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              Gap(10),
              Text(
                "This demo showcases various Flutter-inspired UI components and animations built with React.",
                style: TextStyle(fontSize: 13, color: Colors.white),
              ),
              Gap(20),
              AndroidIOSrow(),
            ],
          ),
        ),
      ),
    );
  }
}
