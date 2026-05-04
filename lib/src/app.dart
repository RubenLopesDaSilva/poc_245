import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:poc_245/src/routing/app_router.dart';
import 'package:poc_245/src/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AdaptiveThemeMode initialTheme = AdaptiveThemeMode.dark;
    return AdaptiveTheme(
      initial: initialTheme,
      light: lightTheme,
      dark: darkTheme,
      builder: (light, dark) => MaterialApp.router(
        title: 'POC - 245',
        theme: light,
        darkTheme: dark,
        routerConfig: router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}