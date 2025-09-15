import 'package:flutter/material.dart';
import 'package:intlphonenumberinputtest/theme/colors.dart';

/// All text styles used in the application.
///
/// Declare styles with required [fontFamily], [fontSize] and [fontWeight] attributes.
/// Optionally give it a [color] using colors defined in [CustomColors] class.
///
/// NOTE: naming convention: fontFamily|fontSize|fontWeight|color. Example: lato60Bold or lato60BoldWhite.
/// NOTE: follow correct [FontWeight] names:
/// [FontWeight.w100] - thin
/// [FontWeight.w200] - extraLight
/// [FontWeight.w300] - light
/// [FontWeight.w400] - regular
/// [FontWeight.w500] - medium
/// [FontWeight.w600] - semiBold
/// [FontWeight.w700] - bold
/// [FontWeight.w800] - extraBold
/// [FontWeight.w900] - black
///
/// If we have named styles from the design then create static getter with the name of the style returning correct style underhood.
/// See [heading1] for example.
abstract class CustomStyles {
  static TextStyle poppins({
    required double fontSize,
    Color color = CustomColors.onBackground,
    FontWeight fontWeight = FontWeight.w400,
    double? lineHeight,
    double? letterSpacing,
    bool scaleFontSize = false,
  }) {
    final double scaledFontSize = fontSize;

    return TextStyle(
      height: lineHeight != null ? (lineHeight / fontSize) : null,
      fontSize: scaledFontSize,
      fontFamily: 'Poppins',
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing,
      leadingDistribution: TextLeadingDistribution.even,
    );
  }

  static TextStyle roboto({
    required double fontSize,
    Color color = CustomColors.onBackground,
    FontWeight fontWeight = FontWeight.w400,
    double? lineHeight,
    double? letterSpacing,
  }) {
    return TextStyle(
      height: lineHeight != null ? (lineHeight / fontSize) : null,
      fontSize: fontSize,
      fontFamily: 'Roboto',
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing,
      leadingDistribution: TextLeadingDistribution.even,
    );
  }

  static TextStyle inter({
    required double fontSize,
    Color color = CustomColors.onBackground,
    FontWeight fontWeight = FontWeight.w400,
    double? lineHeight,
    double? letterSpacing,
  }) {
    return TextStyle(
      height: lineHeight != null ? (lineHeight / fontSize) : null,
      fontSize: fontSize,
      fontFamily: 'Inter',
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing,
      leadingDistribution: TextLeadingDistribution.even,
    );
  }

  static TextStyle openSans({
    required double fontSize,
    Color color = CustomColors.onBackground,
    FontWeight fontWeight = FontWeight.w400,
    double? lineHeight,
    double? letterSpacing,
  }) {
    return TextStyle(
      height: lineHeight != null ? (lineHeight / fontSize) : null,
      fontSize: fontSize,
      fontFamily: 'OpenSans',
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing,
      leadingDistribution: TextLeadingDistribution.even,
    );
  }

  static TextStyle get displayLarge => poppins(
        fontSize: 56,
        lineHeight: 68,
        fontWeight: FontWeight.w700,
        scaleFontSize: true,
      );

  static TextStyle get displayMedium => poppins(
      fontSize: 48,
      lineHeight: 54,
      fontWeight: FontWeight.w700,
      scaleFontSize: true);

  static TextStyle get displayMediumLight => poppins(
      fontSize: 48,
      lineHeight: 54,
      fontWeight: FontWeight.w300,
      scaleFontSize: true);

  static TextStyle get displaySmall => poppins(
      fontSize: 36,
      lineHeight: 44,
      fontWeight: FontWeight.w700,
      scaleFontSize: true);

  static TextStyle get displaySmallLight => poppins(
      fontSize: 36,
      lineHeight: 44,
      fontWeight: FontWeight.w300,
      scaleFontSize: true);

  static TextStyle get headlineLarge => poppins(
      fontSize: 32,
      lineHeight: 40,
      fontWeight: FontWeight.w700,
      scaleFontSize: true);

  static TextStyle get headlineMedium => poppins(
        fontSize: 24,
        lineHeight: 32,
        fontWeight: FontWeight.w700,
        scaleFontSize: true,
      );

  static TextStyle get headlineSmall => poppins(
        fontSize: 18,
        lineHeight: 24,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleLarge => openSans(
        fontSize: 16,
      );

  static TextStyle get titleLargeBold => openSans(
        fontSize: 16,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleSmall => openSans(
        fontSize: 14,
      );

  static TextStyle get titleSmallBold => openSans(
        fontSize: 14,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleCaps => openSans(
        fontSize: 10,
        letterSpacing: 2,
      );

  static TextStyle get labelLarge => openSans(
        fontSize: 12,
      );

  static TextStyle get labelLargeBold => openSans(
        fontSize: 12,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get labelSmall => openSans(
        fontSize: 10,
      );

  static TextStyle get labelSmallBold => openSans(
        fontSize: 10,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get labelGraph => openSans(
        fontSize: 6,
      );

  static TextStyle get buttonLabelLarge => openSans(
        fontSize: 15,
        lineHeight: 22,
        fontWeight: FontWeight.w600,
        letterSpacing: -0.408,
      );

  static TextStyle get buttonLabelSmall => openSans(
        fontSize: 10,
        lineHeight: 14,
        fontWeight: FontWeight.w600,
        letterSpacing: -0.408,
      );

  static TextStyle get bodyLarge => openSans(
        fontSize: 16,
      );

  static TextStyle get bodyLargeBold => openSans(
        fontSize: 16,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get bodySmall => openSans(
        fontSize: 14,
      );

  static TextStyle get bodySmallBold => openSans(
        fontSize: 14,
        fontWeight: FontWeight.w700,
      );
}

///Extension for adding custom [color] in TextStyle
extension TextStyleColorExtension on TextStyle {
  TextStyle withColor(Color color) {
    return copyWith(color: color);
  }
}

///Extension for adding custom [height] in TextStyle
extension TextStyleHeightExtension on TextStyle {
  TextStyle withHeight(double height) {
    return copyWith(height: height);
  }
}

///Extension for adding custom [letterSpacing] in TextStyle
extension TextStyleLetterSpacingExtension on TextStyle {
  TextStyle withLetterSpacing(double letterSpacing) {
    return copyWith(letterSpacing: letterSpacing);
  }
}
