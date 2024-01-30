import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      );

  // Outline decorations
  static BoxDecoration get outlineAmber => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        border: Border.all(
          color: appTheme.amber600,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlack => BoxDecoration();
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.gray50Ef,
        border: Border.all(
          color: appTheme.gray500,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray500 => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        border: Border.all(
          color: appTheme.gray500,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineLightGreenA => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        border: Border.all(
          color: appTheme.lightGreenA700,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary1 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary2 => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: theme.colorScheme.primary,
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
