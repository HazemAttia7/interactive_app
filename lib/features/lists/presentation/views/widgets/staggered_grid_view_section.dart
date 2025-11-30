import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:interactive_app/features/lists/presentation/views/widgets/staggered_grid_view.dart';

class StaggeredGridViewSection extends StatelessWidget {
  const StaggeredGridViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Staggered Grid", style: TextStyle(fontSize: 16.sp)),
          Gap(10.sp),
          const StaggeredGridView(),
        ],
      ),
    );
  }
}
