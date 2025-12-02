import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:interactive_app/core/theme/theme_controller.dart';
import 'package:provider/provider.dart';

class GradientThemeButton extends StatelessWidget {
  const GradientThemeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<ThemeController>().changeThemeMode();
      },
      child: Container(
        padding: EdgeInsets.all(14.sp),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(
            colors: [Color(0xFF667EEA), Color(0xFF834FE4)],
            center: Alignment.topLeft,
            radius: 1.7,
            stops: [0.4, 1],
          ),
        ),
        child: Icon(
          context.watch<ThemeController>().themeMode == ThemeMode.dark
              ? Icons.wb_sunny_outlined
              : FontAwesomeIcons.moon,
          color: Colors.white,
          size: 18.sp,
        ),
      ),
    );
  }
}
