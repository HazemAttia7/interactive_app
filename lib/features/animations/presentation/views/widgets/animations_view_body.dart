import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:interactive_app/features/animations/presentation/views/animation_showcase_view.dart';
import 'package:interactive_app/features/animations/presentation/views/widgets/animated_list_view.dart';
import 'package:interactive_app/features/animations/presentation/views/widgets/animations_header_text.dart';
import 'package:interactive_app/features/animations/presentation/views/widgets/hero_transitions_section.dart';
import 'package:interactive_app/features/animations/presentation/views/widgets/animated_gradient_button.dart';
import 'package:interactive_app/features/animations/presentation/views/widgets/menu_items.dart';
import 'package:popover/popover.dart';

class AnimationsViewBody extends StatelessWidget {
  const AnimationsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(10.sp),
          const AnimatedTopPaddingHeaderText(
            title: "Animations",
            subtitle: "Smooth transitions and effects",
          ),
          Gap(25.sp),
          Builder(
            builder: (btnCtx) {
              return AnimatedGradientButton(
                text: 'Show Popup Menu',
                onTap: () => showPopover(
                  context: btnCtx,
                  bodyBuilder: (context) => const MenuItems(),
                  width: 250.sp,
                  height: 150.sp,
                  backgroundColor: Colors.deepPurple[300]!,
                  direction: PopoverDirection.bottom,
                ),
              );
            },
          ),
          Gap(20.sp),
          AnimatedGradientButton(
            text: 'Show Animated List',
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  opaque: false,
                  barrierColor: Colors.black26,
                  pageBuilder: (_, __, ___) {
                    return const AnimationShowcaseView(
                      title: "Animated List",
                      child: AnimatedListView(),
                    );
                  },
                ),
              );
            },
            delay: const Duration(milliseconds: 150),
          ),
          Gap(20.sp),
          const HeroTransitionsSection(),
          Gap(20.sp),
        ],
      ),
    );
  }
}
