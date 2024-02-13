import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeLexendExaGray900 =>
      theme.textTheme.bodyLarge!.lexendExa.copyWith(
        color: appTheme.gray900,
        fontSize: 16.fSize,
      );
  static get bodyLargeLexendExaOnPrimaryContainer =>
      theme.textTheme.bodyLarge!.lexendExa.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 16.fSize,
      );
  static get bodyLargeLexendExaSecondaryContainer =>
      theme.textTheme.bodyLarge!.lexendExa.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 16.fSize,
      );
  static get bodySmallAmber600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.amber600,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
      );
  static get bodySmallGray500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
      );
  static get bodySmallLightgreenA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.lightGreenA700,
      );
  static get bodySmallOnError => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodySmallPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodySmallRedA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.redA700,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
      );
  // Display text style
  static get displayMediumLightblue900 =>
      theme.textTheme.displayMedium!.copyWith(
        color: appTheme.lightBlue900,
      );
  static get displayMediumOnPrimary => theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get displayMediumPrimary => theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get displayMediumWhiteA700 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get displaySmallErrorContainer =>
      theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
      );
  static get displaySmallLexendExaRedA700 =>
      theme.textTheme.displaySmall!.lexendExa.copyWith(
        color: appTheme.redA700,
        fontWeight: FontWeight.w700,
      );
  static get displaySmallff6000ff => theme.textTheme.displaySmall!.copyWith(
        color: Color(0XFF6000FF),
      );
  static get displaySmallffdbff00 => theme.textTheme.displaySmall!.copyWith(
        color: Color(0XFFDBFF00),
      );
  // Label text style
  static get labelLargeGray500 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray500,
      );
  static get labelLargeLightblue900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.lightBlue900,
      );
  static get labelLargeOnError => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
}

extension on TextStyle {
  TextStyle get lobsterTwo {
    return copyWith(
      fontFamily: 'Lobster Two',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get lexendExa {
    return copyWith(
      fontFamily: 'Lexend Exa',
    );
  }

  TextStyle get magra {
    return copyWith(
      fontFamily: 'Magra',
    );
  }
}
