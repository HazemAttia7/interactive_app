import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:interactive_app/features/home/presentation/views/widgets/animated_grid_view.dart';
import 'package:interactive_app/features/home/presentation/views/widgets/home_header.dart';
import 'package:interactive_app/features/home/presentation/views/widgets/neumorphic_buttons_section.dart';
import 'package:interactive_app/features/home/presentation/views/widgets/welcome_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          Gap(25),
          HomeHeader(),
          Gap(25),
          WelcomeCard(),
          Gap(25),
          AnimatedGridView(),
          Gap(25),
          NeumorphicButtonsSection()
        ],
      ),
    );
  }
}
