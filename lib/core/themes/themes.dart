import 'package:flutter/material.dart';
import '../utils/colors.dart';

final ThemeData themeData = ThemeData(
  useMaterial3: true,

  scaffoldBackgroundColor: kWhite,

  /// ✅ COLOR SCHEME (FIXED)
  colorScheme: const ColorScheme.light(
    primary: primaryColor,
    secondary: accentGreen,
    surface: kWhite,
    background: kWhite,
    onPrimary: kWhite,
    onSecondary: kWhite,
    onSurface: textPrimary,   // ✅ FIXED
    onBackground: textPrimary,
  ),

  /// ✅ TEXT THEME (IMPROVED)
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: textPrimary,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: textPrimary,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      color: textSecondary,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      color: textSecondary,
    ),
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: kWhite,
    ),
  ),

  /// ✅ APPBAR
  appBarTheme: const AppBarTheme(
    backgroundColor: kWhite,
    foregroundColor: textPrimary,
    elevation: 0,
    centerTitle: true,
  ),

  /// ✅ ICON
  iconTheme: const IconThemeData(
    color: iconRed,
  ),

  /// ✅ CARD
  cardTheme: CardThemeData(
    color: kWhite,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
      side: const BorderSide(color: borderColor),
    ),
  ),

  /// ✅ BUTTON
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: primaryColor,
      foregroundColor: kWhite,
      elevation: 0,
      minimumSize: const Size(double.infinity, 50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  ),

  /// ✅ DIVIDER
  dividerTheme: const DividerThemeData(
    color: borderColor,
    thickness: 1,
  ),
);