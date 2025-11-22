import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:interactive_app/features/home/presentation/views/widgets/bubble_tag.dart';

class AndroidIOSrow extends StatelessWidget {
  const AndroidIOSrow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        BubbleTag(text: 'IOS Ready'),
        Gap(10),
        BubbleTag(text: 'Android Ready'),
      ],
    );
  }
}
