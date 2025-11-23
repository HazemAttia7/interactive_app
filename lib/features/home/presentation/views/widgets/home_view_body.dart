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
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Gap(5),
            HomeHeader(),
            Gap(10),
            WelcomeCard(),
            Gap(20),
            AnimatedGridView(),
            Gap(15),
            NeumorphicButtonsSection(),
          ],
        ),
      ),
    );
  }
}
