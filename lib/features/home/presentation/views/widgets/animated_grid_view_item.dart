import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:interactive_app/features/home/presentation/views/widgets/gradient_icon_container.dart';

class AnimatedGridViewItem extends StatelessWidget {
  final IconData icon;
  final List<Color> gradientColors;
  final String title, subtitle;
  const AnimatedGridViewItem({
    super.key,
    required this.icon,
    required this.gradientColors,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300, width: 1),
        borderRadius: BorderRadius.circular(24),
        color: const Color(0xffF9FAFB),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GradientIconContainer(icon: icon, gradientColors: gradientColors),
          const Gap(8),
          Text(title, style: const TextStyle(fontSize: 14)),
          Text(
            subtitle,
            style: const TextStyle(fontSize: 14, color: Colors.black45),
          ),
        ],
      ),
    );
  }
}
