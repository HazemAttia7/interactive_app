import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:interactive_app/features/home/presentation/views/widgets/animated_grid_view.dart';
import 'package:interactive_app/features/home/presentation/views/widgets/home_header.dart';
import 'package:interactive_app/features/home/presentation/views/widgets/neumorphic_buttons_section.dart';
import 'package:interactive_app/features/home/presentation/views/widgets/welcome_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            Gap(5.sp),
            const HomeHeader(),
            Gap(10.sp),
            const WelcomeCard(),
            Gap(20.sp),
            const AnimatedGridView(),
            Gap(15.sp),
            const NeumorphicButtonsSection(),
            Gap(25.sp),
          ],
        ),
      ),
    );
  }
}
