import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFFFF5252);
  static const Color secondary = Color(0xFFFFD740);
  static const Color background = Color(0xFF170C0C);
  static const Color surface = Color(0xFF2A1515);
  static const Color card = Color(0xFF3D1F1F);
  static const Color textPrimary = Colors.white;
  static const Color textSecondary = Colors.white70;

  static ThemeData get darkTheme => ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: background,
        colorScheme: const ColorScheme.dark(
          primary: primary,
          secondary: secondary,
          surface: surface,
        ),
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: surface,
          indicatorColor: primary.withValues(alpha: 0.25),
          labelTextStyle: WidgetStateProperty.all(
            const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: textSecondary),
          ),
        ),
      );
}
