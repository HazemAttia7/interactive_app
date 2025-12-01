import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:interactive_app/core/utils/app_colors.dart';
import 'package:interactive_app/features/animations/presentation/views/widgets/hero_transitions_grid_view_item.dart';
import 'package:interactive_app/core/widgets/staggered_animated_scale_item.dart';

class HeroTransitionsGridView extends StatelessWidget {
  const HeroTransitionsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    const int delay = 150;
    const Duration duration = Duration(milliseconds: 500);
    return GridView(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.sp,
        mainAxisSpacing: 16.sp,
        childAspectRatio: .95,
      ),
      children: const [
        StaggeredAnimatedScaleItem(
          duration: duration,
          child: HeroTransitionsGridViewItem(
            gradientColors: AppColors.blueGradient,
            text: 'Card 1',
            icon: FontAwesomeIcons.borderTopLeft,
          ),
        ),
        StaggeredAnimatedScaleItem(
          duration: duration,
          delay: Duration(milliseconds: delay),
          child: HeroTransitionsGridViewItem(
            gradientColors: AppColors.purpleGradient,
            text: 'Card 2 ',
            icon: FontAwesomeIcons.star,
          ),
        ),
        StaggeredAnimatedScaleItem(
          duration: duration,
          delay: Duration(milliseconds: delay * 2),
          child: HeroTransitionsGridViewItem(
            gradientColors: AppColors.greenGradient,
            text: 'Card 3',
            icon: Icons.auto_awesome_outlined,
          ),
        ),
        StaggeredAnimatedScaleItem(
          duration: duration,
          delay: Duration(milliseconds: delay * 3),
          child: HeroTransitionsGridViewItem(
            gradientColors: AppColors.orangeGradient,
            text: 'Card 4',
            icon: FontAwesomeIcons.faceGrinSquintTears,
          ),
        ),
      ],
    );
  }
}
