import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:interactive_app/core/utils/app_colors.dart';
import 'package:interactive_app/features/home/presentation/views/widgets/animated_grid_view_item.dart';
import 'package:interactive_app/core/widgets/staggered_animated_scale_item.dart';

class AnimatedGridView extends StatelessWidget {
  const AnimatedGridView({super.key});

  @override
  Widget build(BuildContext context) {
    const int delay = 150;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: GridView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.sp,
          mainAxisSpacing: 16.sp,
          childAspectRatio: 1.15,
        ),
        children: const [
          StaggeredAnimatedScaleItem(
            delay: Duration(milliseconds: delay),
            child: AnimatedGridViewItem(
              icon: FontAwesomeIcons.bolt,
              gradientColors: AppColors.orangeGradient,
              title: "Animations",
              subtitle: "Smooth transitions",
            ),
          ),
          StaggeredAnimatedScaleItem(
            delay: Duration(milliseconds: delay * 2),
            child: AnimatedGridViewItem(
              icon: FontAwesomeIcons.cube,
              gradientColors: AppColors.blueGradient,
              title: "Neumorphic UI",
              subtitle: "Modern design",
            ),
          ),
          StaggeredAnimatedScaleItem(
            delay: Duration(milliseconds: delay * 3),
            child: AnimatedGridViewItem(
              icon: FontAwesomeIcons.listOl,
              gradientColors: AppColors.purpleGradient,
              title: "Interactive Lists",
              subtitle: "Drag & reorder",
            ),
          ),
          StaggeredAnimatedScaleItem(
            delay: Duration(milliseconds: delay * 4),
            child: AnimatedGridViewItem(
              icon: FontAwesomeIcons.waveSquare,
              gradientColors: AppColors.greenGradient,
              title: "Timeline",
              subtitle: "Activity tracking",
            ),
          ),
        ],
      ),
    );
  }
}
