import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:interactive_app/core/utils/app_colors.dart';
import 'package:interactive_app/features/animations/presentation/views/widgets/hero_transitions_grid_view_item.dart';

class HeroTransitionsGridView extends StatelessWidget {
  const HeroTransitionsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: .95,
      ),
      children: const [
        HeroTransitionsGridViewItem(
          gradientColors: AppColors.blueGradient,
          text: 'Card 1',
          icon: FontAwesomeIcons.borderTopLeft,
        ),
        HeroTransitionsGridViewItem(
          gradientColors: AppColors.purpleGradient,
          text: 'Card 2 ',
          icon: FontAwesomeIcons.star,
        ),
        HeroTransitionsGridViewItem(
          gradientColors: AppColors.greenGradient,
          text: 'Card 3',
          icon: Icons.auto_awesome_outlined,
        ),
        HeroTransitionsGridViewItem(
          gradientColors: AppColors.orangeGradient,
          text: 'Card 4',
          icon: FontAwesomeIcons.faceGrinSquintTears,
        ),
      ],
    );
  }
}
