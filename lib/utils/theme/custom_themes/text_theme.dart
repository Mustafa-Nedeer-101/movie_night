import 'package:flutter/material.dart';
import 'package:movie_night/utils/constants/colors.dart';
import 'package:movie_night/utils/constants/font_weights.dart';

class TTextTheme {
  TTextTheme._();

  // Text theme for light mode
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32.0,
        fontWeight: CWeights.fontWeightExtraBold,
        color: Palette.black),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24,
        fontWeight: CWeights.fontWeightBold,
        color: Palette.black),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 20,
        fontWeight: CWeights.fontWeightSemiBold,
        color: Palette.black),
    titleLarge: const TextStyle().copyWith(
        fontSize: 18,
        fontWeight: CWeights.fontWeightSemiBold,
        color: Palette.black),
    titleMedium: const TextStyle().copyWith(
        fontSize: 16,
        fontWeight: CWeights.fontWeightMedium,
        color: Palette.black),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16,
        fontWeight: CWeights.fontWeightRegular,
        color: Palette.black.withValues(alpha: 0.8)), // new added opacity
    bodyLarge: const TextStyle().copyWith(
        fontSize: 14,
        fontWeight: CWeights.fontWeightMedium,
        color: Palette.black),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14,
        fontWeight: CWeights.fontWeightRegular,
        color: Palette.black),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14,
        fontWeight: CWeights.fontWeightLight,
        color: Palette.black.withValues(alpha: 0.5)),
    labelLarge: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: CWeights.fontWeightLight,
        color: Palette.black),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: CWeights.fontWeightExtraLight,
        color: Palette.black.withValues(alpha: 0.5)),
    labelSmall: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: CWeights.fontWeightThin,
        color: Palette.black.withValues(alpha: 0.5)),
  );

  // Text theme for light mode
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32.0,
        fontWeight: CWeights.fontWeightExtraBold,
        color: Palette.white),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24,
        fontWeight: CWeights.fontWeightBold,
        color: Palette.white),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 20,
        fontWeight: CWeights.fontWeightSemiBold,
        color: Palette.white),
    titleLarge: const TextStyle().copyWith(
        fontSize: 18,
        fontWeight: CWeights.fontWeightSemiBold,
        color: Palette.white),
    titleMedium: const TextStyle().copyWith(
        fontSize: 16,
        fontWeight: CWeights.fontWeightMedium,
        color: Palette.white),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16,
        fontWeight: CWeights.fontWeightRegular,
        color: Palette.white.withValues(alpha: 0.8)), // new added opacity
    bodyLarge: const TextStyle().copyWith(
        fontSize: 14,
        fontWeight: CWeights.fontWeightMedium,
        color: Palette.white),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14,
        fontWeight: CWeights.fontWeightRegular,
        color: Palette.white),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14,
        fontWeight: CWeights.fontWeightLight,
        color: Palette.white.withValues(alpha: 0.5)),
    labelLarge: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: CWeights.fontWeightLight,
        color: Palette.white),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: CWeights.fontWeightExtraLight,
        color: Palette.white.withValues(alpha: 0.5)),
    labelSmall: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: CWeights.fontWeightThin,
        color: Palette.white.withValues(alpha: 0.5)),
  );
}
