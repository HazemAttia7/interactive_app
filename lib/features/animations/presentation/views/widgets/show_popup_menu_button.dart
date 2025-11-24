import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interactive_app/core/utils/app_colors.dart';

class ShowPopupMenuButton extends StatelessWidget {
  const ShowPopupMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO : Show popup menu
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 18.sp),
        margin: EdgeInsets.symmetric(horizontal: 16.sp),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: AppColors.darkPurpleGradient,
            stops: [.15, 1],
          ),
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Center(
          child: Text(
            "Show Popup Menu",
            style: TextStyle(color: Colors.white, fontSize: 16.sp),
          ),
        ),
      ),
    );
  }
}
