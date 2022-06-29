import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const Color kLightPrimary = Color(0xFF8B010B);
const Color kLightAccent = Color(0xFFc50110);
const Color kLightTextColor = Colors.black;
const Color kLightPlaceholder = Color(0xFFE8EAF0);
const Color kLightPlaceholderText = Color(0xFFC6CAD3);
const Color kLightBackground = Color(0xFFFFFFFF);
const Color kLightError = Color(0xFFFF7971);

const Color kDarkPrimary = Color(0xFF8B010B);
const Color kDarkAccent = Color(0xFFc50110);
const Color kDarkTextColor = Colors.white;
const Color kDarkPlaceholder = Color(0xFF2D3655);
const Color kDarkPlaceholderText = Color(0xFF525C7C);
const Color kDarkBackground = Color(0xFF2D3251);
const Color kDarkError = Color(0xFFD0524A);
const Color kGrayColor = Color(0xFF8D989D);
const Duration kAnimationDuration = Duration(milliseconds: 300);
const Curve kAnimationCurve = Curves.easeInOut;

// Input textfield decoration
final kOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10.r),
  borderSide: const BorderSide(color: Colors.transparent, width: 0),
);
final kContentPadding = EdgeInsets.symmetric(vertical: 20.h);

EdgeInsets kPagePadding = EdgeInsets.symmetric(
  horizontal: 16.w,
);

EdgeInsets kCardPadding = EdgeInsets.symmetric(
  horizontal: 16.w,
  vertical: 16.h,
);

EdgeInsets kInputFieldPadding = EdgeInsets.symmetric(
  horizontal: 16.w,
  vertical: 16.h,
);

BorderRadiusGeometry kCardBorderRadius = BorderRadius.circular(
  16.r,
);

BorderRadius kAppIconBorderRadius = BorderRadius.circular(
  8.r,
);

BorderRadiusGeometry kBottomSheetBorderRadius = BorderRadius.only(
  topLeft: Radius.circular(16.r),
  topRight: Radius.circular(16.r),
);





// Padding on Input textfield


// Page Padding or Screen Padding

final kPageItemSpacing = SizedBox(height: 20.h);
final kPageItemSpacing2 = SizedBox(height: 40.h);

// Padding on ElevatedButton
final kElevatedButtonPadding = EdgeInsets.symmetric(vertical: 18.h);

// const Duration kAnimationDuration = Duration(milliseconds: 300);
// const Curve kAnimationCurve = Curves.easeInOut;

// EdgeInsets kCardPadding = EdgeInsets.symmetric(
//   horizontal: 16.w,
//   vertical: 16.h,
// );

// EdgeInsets kInputFieldPadding = EdgeInsets.symmetric(
//   horizontal: 16.w,
//   vertical: 16.h,
// );

// BorderRadiusGeometry kCardBorderRadius = BorderRadius.circular(
//   16.r,
// );

// BorderRadius kAppIconBorderRadius = BorderRadius.circular(
//   8.r,
// );

// BorderRadiusGeometry kBottomSheetBorderRadius = BorderRadius.only(
//   topLeft: Radius.circular(16.r),
//   topRight: Radius.circular(16.r),
// );

