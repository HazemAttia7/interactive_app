import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:interactive_app/features/animations/presentation/views/widgets/animations_header_text.dart';
import 'package:interactive_app/features/animations/presentation/views/widgets/hero_transitions_section.dart';
import 'package:interactive_app/features/animations/presentation/views/widgets/show_popup_menu_button.dart';
import 'package:interactive_app/features/animations/presentation/views/widgets/staggered_list_animation_section.dart';

class AnimationsViewBody extends StatelessWidget {
  const AnimationsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(5),
            AnimationsHeaderText(),
            Gap(25),
            ShowPopupMenuButton(),
            Gap(20),
            HeroTransitionsSection(),
            Gap(20),
            StaggeredListAnimationSection(),
            Gap(20),
          ],
        ),
      ),
    );
  }
}
