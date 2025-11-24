import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:interactive_app/features/animations/presentation/views/widgets/animated_list_view.dart';

class StaggeredListAnimationSection extends StatelessWidget {
  const StaggeredListAnimationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.sp),
          child: Text(
            "Staggered List Animation",
            style: TextStyle(fontSize: 16.sp),
          ),
        ),
        Gap(15.sp),
        const AnimatedListView(),
      ],
    );
  }
}
