import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interactive_app/core/theme/theme.dart';
import 'package:interactive_app/core/theme/theme_controller.dart';
import 'package:interactive_app/features/main/presentation/views/main_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeController(),
      child: const InteractiveApp(),
    ),
  );
}

class InteractiveApp extends StatelessWidget {
  const InteractiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411.42857142857144, 832.7619047619048),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) {
        return Consumer<ThemeController>(
          builder: (context, controller, child) {
            return MaterialApp(
              title: 'Interactive App',
              debugShowCheckedModeBanner: false,
              theme: lightTheme,
              darkTheme: darkTheme,
              themeMode: controller.themeMode,
              home: const MainView(),
            );
          },
        );
      },
    );
  }
}
