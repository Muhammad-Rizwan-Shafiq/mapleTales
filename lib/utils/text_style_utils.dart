import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talepreview/res/fonts/app_fonts.dart';

class TextStyleUtils {
  static TextStyle heading = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.w700,
    fontFamily: AppFonts.openDyslexicRegular
    // Add any other desired text style properties
  );

  static TextStyle body = TextStyle(
    fontSize: 16.sp,
      fontFamily: AppFonts.openDyslexicRegular
    // Add any other desired text style properties
  );

  static TextStyle cardHeading = TextStyle(
      fontSize: 13.sp,
      fontFamily: AppFonts.openDyslexicRegular,
    fontWeight: FontWeight.w700,
    // Add any other desired text style properties
  );

  static TextStyle buttonText = TextStyle(
    fontSize: 16.sp,
    fontFamily: AppFonts.openDyslexicRegular,
    fontWeight: FontWeight.w700,
    // Add any other desired text style properties
  );



// Define more text styles as needed
}