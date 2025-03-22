import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xgen_machine_task/shared/app/constant/colors.dart';
class FontPalette {
  static const themeFont = "Manrope";

  static TextTheme get textLightTheme {
    return Typography.englishLike2018.apply(
      fontSizeFactor: 0.8.sp,
      bodyColor: primaryColor,
      fontFamily: FontPalette.themeFont,
    );
  }

  static TextStyle manrope8 = TextStyle(
    fontSize: 8.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    // height: 9.6.h,
  );
  static TextStyle manrope9 = TextStyle(
    fontSize: 9.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    // height: 9.6.h,
  );
  static TextStyle manrope10 = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    // height: 12.h,
  );
  static TextStyle manrope12 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
  );
  static TextStyle manrope13 = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: 1,
    // height: 14.4.h,
  );
  static TextStyle manrope14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    // height: 16.8.h,
  );
  static TextStyle manrope16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    // height: 19.2.h,
  );
  static TextStyle manrope18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    // height: 21.6.h,
  );
  static TextStyle manrope20 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    // height: 24.6.h,
  );
  static TextStyle manrope24 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    // height: 28.8.h,
  );
  static TextStyle manrope26 = TextStyle(
    fontSize: 26.sp,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    // height: 28.8.h,
  );
  static TextStyle manrope30 = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    // height: 36.h,
  );
  static TextStyle manrope34 = TextStyle(
    fontSize: 34.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    // height: 40.8.h,
  );
  static TextStyle manrope38 = TextStyle(
    fontSize: 38.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    // height: 45.6.h,
  );
  static TextStyle manrope42 = TextStyle(
    fontSize: 42.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    // height: 50.4.h,
  );
}

class AppSizes {
  AppSizes._();
  static double normalHorizontalPadding = 3.w;
  static double normalVerticalPadding = 5.h;
  static double largeHorizontalPadding = 5.w;
  static double largeVerticalPadding = 7.h;
  static double smallHorizontalPadding = 1.w;
  static double smallVerticalPadding = 3.h;
  static double mediumButtonVerticalPadding = 20.h;
  static double mediumIconSize = 7.sp;
  static double smallIconSize = 5.7.sp;

  static double normalBorderRadius = 4.r;
  static double cardBorderRadius = 15.r;
  static double normalBorderWidth = 1.h;

  static double smallFontSize = 10.sp;
  static double normalFontSize = 12.sp;
  static double bigFontSize = 14.sp;

  static double normalTextFieldSize = 40.h;
  static double screenHalfSizeWidth = 0.5.sw;
  static double screenHalfSizeHeight = 0.5.sh;
  static double screenHalfQuarterSize = 0.8.sw;
  static double screenQuarterSize = 0.3.sw;
  static double popUpPadding = 20.r;
  static double cardHightSize = 60.h;
  static double cardWidthSize = 75.w;
}
