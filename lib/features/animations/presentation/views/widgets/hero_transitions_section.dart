import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:interactive_app/features/animations/presentation/views/widgets/hero_transitions_grid_view.dart';

class HeroTransitionsSection extends StatelessWidget {
  const HeroTransitionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hero Transitions", style: TextStyle(fontSize: 16.sp)),
          Gap(15.sp),
          Text(
            "Tap a card to expand",
            style: TextStyle(fontSize: 14.sp, color: Colors.black45),
          ),
          Gap(10.sp),
          const HeroTransitionsGridView(),
        ],
      ),
    );
  }
}
