import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final Color _iconColor = Colors.grey.shade700;
  static final Color _lightPrimaryColor = Colors.brown.shade300;
  static final Color _lightOnPrimaryColor = Colors.brown.shade200;
  static final Color _lightSecondaryColor = Colors.amber.shade400;
  static final Color _lightErrorColor = Colors.pink.shade700;

  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
      primary: _lightPrimaryColor,
      onPrimary: _lightOnPrimaryColor,
      secondary: _lightSecondaryColor,
      error: _lightErrorColor,
    ),
    appBarTheme: AppBarTheme(
      foregroundColor: Colors.grey.shade200,
      backgroundColor: _lightOnPrimaryColor,
      elevation: 0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.blueGrey.shade900,
      unselectedItemColor: Colors.blueGrey.shade300,
    ),
    iconTheme: IconThemeData(
      color: _iconColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.pink.shade50,
        onPrimary: Colors.grey.shade800,
        elevation: 0.8,
      ),
    ),
  );
}
