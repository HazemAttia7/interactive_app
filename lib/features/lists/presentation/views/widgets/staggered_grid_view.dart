import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:interactive_app/core/widgets/staggered_animated_scale_item.dart';

class StaggeredGridView extends StatelessWidget {
  const StaggeredGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<double> heights = [80, 135, 135, 110, 75, 80];
    return MasonryGridView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: heights.length,
      itemBuilder: (context, index) => StaggeredAnimatedScaleItem(
        duration: const Duration(milliseconds: 400),
        delay: Duration(milliseconds: index * 150),
        child: StaggeredGridViewItem(
          height: heights[index],
          text: 'Item ${index + 1}',
        ),
      ),
    );
  }
}

class StaggeredGridViewItem extends StatelessWidget {
  final String text;
  final double height;

  const StaggeredGridViewItem({
    super.key,
    required this.text,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4.sp),
      child: Container(
        height: height.sp,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: Theme.of(context).colorScheme.outlineVariant,
            width: 1.sp,
          ),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: _getGradientColors(context),
          ),
        ),
        child: Center(
          child: Text(text, style: TextStyle(fontSize: 14.sp)),
        ),
      ),
    );
  }

  List<Color> _getGradientColors(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? [const Color(0xFFE3EEFF), const Color(0xFFF3E2FF)]
        : [const Color(0xFF1A2332), const Color(0xFF2A1A33)];
  }
}
