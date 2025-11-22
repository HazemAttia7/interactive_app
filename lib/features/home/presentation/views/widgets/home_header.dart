import 'package:flutter/material.dart';
import 'package:interactive_app/features/home/presentation/views/widgets/gradient_theme_button.dart';
import 'package:interactive_app/features/home/presentation/views/widgets/home_header_text.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HomeHeaderText(),
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: GradientThemeButton(),
        ),
      ],
    );
  }
}
