import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

final customlighttheme = ThemeData.light().copyWith(
  primaryColor: kLightPrimary,
  scaffoldBackgroundColor: kLightBackground,
  backgroundColor: kLightPlaceholder,
  errorColor: kLightError,
  textTheme: GoogleFonts.redHatDisplayTextTheme(
    const TextTheme().copyWith(
      caption: TextStyle(color: Colors.black),
      headline1: TextStyle(
        fontSize: 32.sp,
        fontWeight: FontWeight.bold,
        color: kLightPrimary,
      ),
      headline2: TextStyle(
        fontSize: 32.sp,
        color: kLightTextColor,
      ),
      headline3: TextStyle(
        fontSize: 24.sp,
        color: kLightTextColor,
        fontWeight: FontWeight.bold,
      ),
      headline4: TextStyle(
        fontSize: 24.sp,
        color: kLightTextColor,
      ),
      headline5: TextStyle(
        fontSize: 20.sp,
        color: kLightTextColor,
      ),
      headline6: TextStyle(
        fontSize: 16.sp,
        color: kLightTextColor,
      ),
      bodyText1: TextStyle(
        fontSize: 12.sp,
        color: kLightTextColor,
      ),
      bodyText2: TextStyle(
        fontSize: 14.sp,
        color: kLightTextColor,
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: kOutlineInputBorder,
    enabledBorder: kOutlineInputBorder,
    focusedBorder: kOutlineInputBorder,
    filled: true,
    fillColor: kLightPlaceholder,
    contentPadding: kContentPadding,
    hintStyle: TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
    ),
  ),
  appBarTheme: AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    backgroundColor: kLightPrimary,
    titleTextStyle: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.bold,
      color: kDarkTextColor,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: kLightBackground,
    selectedItemColor: kLightPrimary,
    selectedIconTheme: IconThemeData(
      color: kLightPrimary,
      size: 24.sp,
    ),
    unselectedItemColor: kLightPlaceholderText,
    unselectedIconTheme: IconThemeData(
      color: kLightPlaceholderText,
      size: 24.sp,
    ),
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    refreshBackgroundColor: kLightPlaceholder,
  ),
  colorScheme: const ColorScheme.light().copyWith(
    background: kLightPlaceholder,
    surface: kLightPlaceholderText,
    primary: kLightPrimary,
    secondary: kLightAccent,
  ),
);
