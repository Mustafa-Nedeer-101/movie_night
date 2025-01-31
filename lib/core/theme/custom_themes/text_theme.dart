import 'package:flutter/material.dart';
import 'package:movie_night/core/constants/colors.dart';

class TTextTheme {
  TTextTheme._();

  // Text theme for light mode
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
    titleLarge: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
    titleMedium: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color:
            Colors.black.withAlpha((0.8 * 255).toInt())), // new added opacity
    bodyLarge: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Colors.black.withAlpha((0.5 * 255).toInt())),
    labelLarge: const TextStyle().copyWith(
        fontSize: 12, fontWeight: FontWeight.normal, color: Colors.black),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: Colors.black.withAlpha((0.5 * 255).toInt())),
  );

  // Text theme for light mode
  static TextTheme darkTextTheme = TextTheme(
    // Display styles (largest text)
    displayLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: CColors.textColor,
    ),
    displayMedium: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: CColors.textColor,
    ),
    displaySmall: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: CColors.textColor,
    ),

    // Headline styles
    headlineLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: CColors.textColor,
    ),
    headlineMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: CColors.textColor,
    ),
    headlineSmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: CColors.textColor,
    ),

    // Title styles
    titleLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: CColors.textColor,
    ),
    titleMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: CColors.textColor,
    ),
    titleSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.bold,
      color: CColors.textColor,
    ),

    // Body styles
    bodyLarge: TextStyle(
      fontSize: 16,
      color: CColors.textColor,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      color: CColors.textColor,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      color: CColors.textColor,
    ),

    // Label styles (used for buttons and captions)
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: CColors.textColor,
    ),
    labelMedium: TextStyle(
      fontSize: 12,
      color: CColors.secondaryTextColor,
    ),
    labelSmall: TextStyle(
      fontSize: 10,
      color: CColors.secondaryTextColor,
    ),
  );
}
