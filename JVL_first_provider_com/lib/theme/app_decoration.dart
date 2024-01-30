import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Outline decorations
  static BoxDecoration get outlineAmber => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.amber600,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineErrorContainer => BoxDecoration();
  static BoxDecoration get outlineLightBlue => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.lightBlue900,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineLightGreenA => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.lightGreenA700,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineLightblue900 => BoxDecoration(
        border: Border.all(
          color: appTheme.lightBlue900,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineLightblue9001 => BoxDecoration(
        color: appTheme.lightBlue900,
        border: Border.all(
          color: appTheme.lightBlue900,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOnError => BoxDecoration(
        color: appTheme.gray50Ef,
        border: Border.all(
          color: theme.colorScheme.onError,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOnError1 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: theme.colorScheme.onError,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineRedA => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.redA700,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
