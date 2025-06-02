import 'package:flutter/material.dart';
import 'package:movie_night/utils/constants/colors.dart';
import 'package:movie_night/utils/constants/font_weights.dart';

class TextStyles {
  static TextStyle font24BlackWeightBold = TextStyle(
      fontSize: 24, color: Colors.black, fontWeight: CWeights.fontWeightBold);

  static TextStyle font32PrimaryWeightBold = TextStyle(
    fontSize: 32,
    color: Palette.primaryColor,
    fontWeight: CWeights.fontWeightBold,
  );

  static TextStyle font24PrimaryWeightBold = const TextStyle(
    fontSize: 24,
    color: Palette.primaryColor,
    fontWeight: CWeights.fontWeightBold,
  );

  static TextStyle font12GreyWeightRegular = TextStyle(
    fontSize: 12,
    color: Palette.grey,
    fontWeight: CWeights.fontWeightRegular,
  );

  // Used in Home Page Banner ButtonTextStyle(
  static TextStyle font12PrimaryWeightRegular = TextStyle(
    fontSize: 12,
    color: Palette.primaryColor,
    fontWeight: CWeights.fontWeightRegular,
  );

  static TextStyle font12DarkBlueWeightRegular = TextStyle(
      fontSize: 12,
      color: Palette.darkBlue,
      fontWeight: CWeights.fontWeightRegular);

  static TextStyle font12GreyWeightMedium = TextStyle(
      fontSize: 12, color: Palette.grey, fontWeight: CWeights.fontWeightMedium);

  static TextStyle font13PrimaryWeightRegular = TextStyle(
    fontSize: 13,
    color: Palette.primaryColor,
    fontWeight: CWeights.fontWeightRegular,
  );

  static TextStyle font13DarkBlueWeightRegular = TextStyle(
      fontSize: 13,
      color: Palette.darkBlue,
      fontWeight: CWeights.fontWeightRegular);

  static TextStyle font13GreyWeightRegular = TextStyle(
      fontSize: 13, color: Colors.grey, fontWeight: CWeights.fontWeightRegular);

  static TextStyle font13DarkBlueWeightMedium = TextStyle(
      fontSize: 13,
      color: Palette.darkBlue,
      fontWeight: CWeights.fontWeightMedium);

  static TextStyle font10GreyWeightRegular = TextStyle(
      fontSize: 10, color: Colors.grey, fontWeight: CWeights.fontWeightRegular);

  static TextStyle font14LightGreyWeightRegular = TextStyle(
      fontSize: 14,
      color: Palette.lightGrey,
      fontWeight: CWeights.fontWeightRegular);

  static TextStyle font14GreyWeightRegular = TextStyle(
      fontSize: 14,
      color: Palette.grey,
      fontWeight: CWeights.fontWeightRegular);

  static TextStyle font14DarkBlueWeightMedium = TextStyle(
      fontSize: 14,
      color: Palette.darkBlue,
      fontWeight: CWeights.fontWeightMedium);

  static TextStyle font14DarkBlueWeightBold = TextStyle(
      fontSize: 14,
      color: Palette.darkBlue,
      fontWeight: CWeights.fontWeightBold);

  static TextStyle font14PrimaryWeightSemiBold = TextStyle(
      fontSize: 14,
      color: Palette.primaryColor,
      fontWeight: CWeights.fontWeightSemiBold);

  static TextStyle font15DarkBlueWeightMedium = TextStyle(
      fontSize: 15,
      color: Palette.darkBlue,
      fontWeight: CWeights.fontWeightMedium);

  static TextStyle font16WhiteWeightSemiBold = TextStyle(
      fontSize: 16,
      color: Colors.white,
      fontWeight: CWeights.fontWeightSemiBold);

  // Used in HomeAppBar
  static TextStyle font18DarkBlueWeightBold = TextStyle(
      fontSize: 18,
      color: Palette.darkBlue,
      fontWeight: CWeights.fontWeightBold);

  // Used in CustomSectionHeader
  static TextStyle font18DarkBlueWeightSemiBold = TextStyle(
      fontSize: 18,
      color: Palette.darkBlue,
      fontWeight: CWeights.fontWeightBold);

  // Used in the Hame Page Banner Text
  static TextStyle font18WhiteWeightMedium = TextStyle(
      fontSize: 15,
      color: Palette.white,
      fontWeight: CWeights.fontWeightMedium);
}
