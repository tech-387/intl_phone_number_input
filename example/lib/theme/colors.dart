import 'package:flutter/material.dart';

/// All colors used in the application.
/// Declare colors in HEX or RGB format.
/// Specify comment above declared color in format: [HEX value] | [RGB value].
///
/// NOTE: Name colors by name from the design if there are any (example: primary).
/// NOTE: If there is not named color in the design then use general name without any context (example: white, lightRed ...)

abstract class CustomColors {
  static const primary = Color(0xFFFFB414);
  static const onPrimary = Color(0xFFFFFFFF);
  static const background = Color(0xFF131515);
  static const onBackground = Color(0xFFFFFFFF);
  static const error = Color(0xFFEC193C);
  static const onError = Color(0xFFFFFFFF);
  static const darkLighter = Color(0xFF212121);
  static const darkGrey = Color(0xFF3E3E3E);
  static const green = Color(0xFF2ED368);
  static Color white50 = onBackground.withValues(alpha: 0.54);
  static Color white24 = onBackground.withValues(alpha: 0.24);
  static Color white10 = onBackground.withValues(alpha: 0.10);
}
