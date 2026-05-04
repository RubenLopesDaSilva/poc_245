import 'package:flutter/material.dart';

extension ExtraColors on ColorScheme {
  Color get purpleImpo1 => const Color(0xFFA684FC);
  Color get purpleGrad1 => const Color(0xFF9050FF);
  Color get purpleGrad2 => const Color(0xFFB846FE);
  Color get purpleGrad3 => const Color(0xFFE02DF9);

  Color get red => const Color(0xFFF2787A);
  Color get green => const Color(0xFF15A877);
  Color get yellow => const Color(0xFFFCBA03);
  Color get blue => const Color(0xFF4988c2);
  Color get black => const Color(0xFF000000);
  Color get white => const Color(0xFFFFFFFF);
}

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,

  colorScheme: const ColorScheme.dark(
    surfaceBright: Color(0xFF2D2D2D),
    surface: Color(0xFF292929),
    onSurface: Color(0xFF202020),
    primary: Color(0xFF1E1E1E),
    onPrimary: Color(0xFF1B1B1B),
    secondary: Color(0xFF141414),
    onSecondary: Color(0xFF121212),
    tertiary: Color(0xFF0E0E0E),
    onTertiary: Color(0xFF0A0A0A),
    scrim: Color(0xFFFFFFFF),
  ),
);

ThemeData lightTheme = ThemeData(
  useMaterial3: true,

  // brightness: Brightness.light,
  colorScheme: const ColorScheme.dark(
    surfaceBright: Color(0xFF6C757D),
    surface: Color(0xFFADB5BD),
    onSurface: Color(0xFFBEC5CC),
    primary: Color(0xFFCED4DA),
    onPrimary: Color(0xFFD6DBE0),
    secondary: Color(0xFFDEE2E6),
    onSecondary: Color(0xFFE9ECEF),
    tertiary: Color(0xFFF1F3F5),
    onTertiary: Color(0xFFF8F9FA),
    scrim: Color(0xFF212529),
  ),
);
