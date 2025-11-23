import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:interactive_app/features/home/presentation/views/widgets/animated_grid_view_item.dart';
import 'package:interactive_app/features/home/presentation/views/widgets/staggered_animated_grid_item.dart';

class AnimatedGridView extends StatelessWidget {
  const AnimatedGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GridView(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 1.15,
        ),
        children: const [
          StaggeredAnimatedGridItem(
            delay: Duration(milliseconds: 700),
            child: AnimatedGridViewItem(
              icon: FontAwesomeIcons.bolt,
              gradientColors: [Color(0xffFFBC00), Color(0xffFF7600)],
              title: "Animations",
              subtitle: "Smooth transitions",
            ),
          ),
          StaggeredAnimatedGridItem(
            delay: Duration(milliseconds: 850),
            child: AnimatedGridViewItem(
              icon: FontAwesomeIcons.cube,
              gradientColors: [Color(0xFF0084FF), Color(0xFF002AFF)],
              title: "Neumorphic UI",
              subtitle: "Modern design",
            ),
          ),
          StaggeredAnimatedGridItem(
            delay: Duration(milliseconds: 1000),
            child: AnimatedGridViewItem(
              icon: FontAwesomeIcons.listOl,
              gradientColors: [
                Color(0xFFCC00FA),
                Color(0xFFDD50FD),
                Color(0xFFF874A0),
              ],
              title: "Interactive Lists",
              subtitle: "Drag & reorder",
            ),
          ),
          StaggeredAnimatedGridItem(
            delay: Duration(milliseconds: 1150),
            child: AnimatedGridViewItem(
              icon: FontAwesomeIcons.waveSquare,
              gradientColors: [Color(0xFF00EB7D), Color(0xff00BF7C)],
              title: "Timeline",
              subtitle: "Activity tracking",
            ),
          ),
        ],
      ),
    );
  }
}
