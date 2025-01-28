import 'package:flutter/material.dart';

class CColors {
  CColors._();

  // App Colors
  static const Color primary = Color.fromARGB(255, 14, 1, 36);
  static const Color secondary = Color.fromARGB(255, 159, 3, 0);
  static const Color accent = Color.fromARGB(211, 45, 28, 92);

  // Gradient Colors
  static const Gradient linearGradient = LinearGradient(
      begin: Alignment(0, 0),
      end: Alignment(0.707, -0.707),
      colors: [Color(0xffff9a9e), Color(0xfffad0c4), Color(0xfffad0c0)]);

  // Text Colors
  static const Color textPrimary = Colors.white;
  static const Color textGrey = Color(0xFF272727);
  static const Color textLightGrey = Color(0xFF656565);

  // Background Colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color.fromARGB(255, 60, 52, 78);

  // Background Container Colors
  static const Color ligntContainer = Color(0xFFF6F6F6);
  static Color darkContainer =
      CColors.textLightGrey.withAlpha((0.1 * 255).toInt());

  // Button Colors
  static const Color buttonPrimary = Color.fromARGB(255, 159, 3, 0);
  static const Color buttonSecondary = Color(0xFF6C757D);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  // Border Colors
  static const Color borderPrimary = Color(0xFF313131);
  static const Color borderSecondary = Color(0xFFD9D9D9);

  // Error and Validation Colors
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  // Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color sofrGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
}
