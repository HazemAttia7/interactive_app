import 'package:flutter/material.dart';
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
        padding: const EdgeInsets.symmetric(vertical: 18),
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: AppColors.darkPurpleGradient,
            stops: [.15, 1],
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Center(
          child: Text(
            "Show Popup Menu",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
