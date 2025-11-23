import 'package:flutter/material.dart';
import 'package:interactive_app/features/home/presentation/views/widgets/neumorphic_button.dart';

class NeumorphicButtonsRow extends StatelessWidget {
  const NeumorphicButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        NeumorphicButton(onTap: () {}),
        NeumorphicButton(onTap: () {}),
        NeumorphicButton(onTap: () {}),
      ],
    );
  }
}
