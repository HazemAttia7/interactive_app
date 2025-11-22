import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GradientThemeButton extends StatelessWidget {
  const GradientThemeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(
            colors: [Color(0xFF667EEA), Color(0xFF834FE4)],
            center: Alignment.topLeft,
            radius: 1.7,

            stops: [0.4, 1],
          ),
        ),
        child: const Icon(FontAwesomeIcons.moon, color: Colors.white, size: 18),
      ),
    );
  }
}
