import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:interactive_app/features/animations/presentation/views/widgets/gradient_circle.dart';

class AnimatedListViewItem extends StatelessWidget {
  final String text;
  const AnimatedListViewItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300, width: 1),
        color: const Color(0xffF7F5FF),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          const GradientCircle(),
          const Gap(10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text, style: const TextStyle(fontSize: 15)),
                const Text("Animated entry", style: TextStyle(fontSize: 15)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
