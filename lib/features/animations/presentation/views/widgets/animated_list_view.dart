import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interactive_app/features/animations/presentation/views/widgets/animated_list_view_item.dart';
import 'package:interactive_app/core/widgets/staggered_animated_list_item.dart';

class AnimatedListView extends StatefulWidget {
  const AnimatedListView({super.key});

  @override
  State<AnimatedListView> createState() => _AnimatedListViewState();
}

class _AnimatedListViewState extends State<AnimatedListView>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(bottom: index == 3 ? 0 : 12.sp),
          child: StaggeredAnimatedListItem(
            animationController: _animationController,
            index: index,
            child: AnimatedListViewItem(text: 'List Item ${index + 1}'),
          ),
        );
      },
    );
  }
}
