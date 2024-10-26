import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Display text style
  static get displayMediumBlack900 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get displayMediumff2d4583 => theme.textTheme.displayMedium!.copyWith(
        color: Color(0XFF2D4583),
      );
  static get displayMediumff3e60c1 => theme.textTheme.displayMedium!.copyWith(
        color: Color(0XFF3E60C1),
      );
  static get displayMediumff5a82fc => theme.textTheme.displayMedium!.copyWith(
        color: Color(0XFF5A82FC),
      );
  // Inter text style
  static get interOnPrimary => TextStyle(
        color: theme.colorScheme.onPrimary,
        fontSize: 150.fSize,
        fontWeight: FontWeight.w700,
      ).inter;
  // Label text style
  static get labelMediumRedA700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.redA700,
        fontWeight: FontWeight.w800,
      );
  // Title text style
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );
  static get titleSmall14 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
      );
  static get titleSmallBlack => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w900,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallCyanA200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.cyanA200,
      );
  static get titleSmallExtraBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w800,
      );
  static get titleSmallGray800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallIndigo800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigo800,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallManrope => theme.textTheme.titleSmall!.manrope;
  static get titleSmallOnErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallff5ef06d => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF5EF06D),
      );
  static get titleSmallffffffff => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFFFFFFFF),
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get manrope {
    return copyWith(
      fontFamily: 'Manrope',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
