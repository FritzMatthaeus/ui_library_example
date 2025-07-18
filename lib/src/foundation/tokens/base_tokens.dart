import 'package:flutter/material.dart';

/// Base design tokens - Raw values that don't change between themes
/// These are the foundation of the design system
class BaseTokens {
  // Color Primitives - Blue Scale
  static const blue50 = Color(0xFFEBF8FF);
  static const blue100 = Color(0xFFBEE3F8);
  static const blue200 = Color(0xFF90CDF4);
  static const blue300 = Color(0xFF63B3ED);
  static const blue400 = Color(0xFF4299E1);
  static const blue500 = Color(0xFF3182CE);
  static const blue600 = Color(0xFF2B77CB);
  static const blue700 = Color(0xFF2C5282);
  static const blue800 = Color(0xFF2A4365);
  static const blue900 = Color(0xFF1A365D);

  // Color Primitives - Gray Scale
  static const gray50 = Color(0xFFF7FAFC);
  static const gray100 = Color(0xFFEDF2F7);
  static const gray200 = Color(0xFFE2E8F0);
  static const gray300 = Color(0xFFCBD5E0);
  static const gray400 = Color(0xFFA0AEC0);
  static const gray500 = Color(0xFF718096);
  static const gray600 = Color(0xFF4A5568);
  static const gray700 = Color(0xFF2D3748);
  static const gray800 = Color(0xFF1A202C);
  static const gray900 = Color(0xFF171923);

  // Color Primitives - Red Scale (for errors)
  static const red50 = Color(0xFFFED7E2);
  static const red100 = Color(0xFFFBB6CE);
  static const red200 = Color(0xFFF687B3);
  static const red300 = Color(0xFFED64A6);
  static const red400 = Color(0xFFD53F8C);
  static const red500 = Color(0xFFE53E3E);
  static const red600 = Color(0xFFC53030);
  static const red700 = Color(0xFF9B2C2C);
  static const red800 = Color(0xFF822727);
  static const red900 = Color(0xFF63171B);

  // Color Primitives - Green Scale (for success)
  static const green50 = Color(0xFFF0FFF4);
  static const green100 = Color(0xFFC6F6D5);
  static const green200 = Color(0xFF9AE6B4);
  static const green300 = Color(0xFF68D391);
  static const green400 = Color(0xFF48BB78);
  static const green500 = Color(0xFF38A169);
  static const green600 = Color(0xFF2F855A);
  static const green700 = Color(0xFF276749);
  static const green800 = Color(0xFF22543D);
  static const green900 = Color(0xFF1C4532);

  // Size Primitives
  static const sizeXs = 8.0;
  static const sizeSm = 12.0;
  static const sizeMd = 16.0;
  static const sizeLg = 24.0;
  static const sizeXl = 32.0;
  static const size2xl = 48.0;

  // Typography Primitives
  static const fontSizeXs = 12.0;
  static const fontSizeSm = 14.0;
  static const fontSizeMd = 16.0;
  static const fontSizeLg = 18.0;
  static const fontSizeXl = 20.0;
  static const fontSize2xl = 24.0;

  // Base unit for spacing system (4px grid)
  static const baseUnit = 4.0;

  // Spacing scale (based on 4px grid)
  static const spaceXs = baseUnit; // 4px
  static const spaceSm = baseUnit * 2; // 8px
  static const spaceMd = baseUnit * 4; // 16px
  static const spaceLg = baseUnit * 6; // 24px
  static const spaceXl = baseUnit * 8; // 32px
  static const space2xl = baseUnit * 12; // 48px

  // Icon sizes (optimized for mobile)
  static const iconXs = 12.0; // Small indicators
  static const iconSm = 16.0; // Inline icons
  static const iconMd = 24.0; // Standard icons
  static const iconLg = 32.0; // Large buttons
  static const iconXl = 48.0; // Hero icons

  // Border radius scale
  static const borderRadiusXs = baseUnit;
  static const borderRadiusSm = baseUnit * 2;
  static const borderRadiusMd = baseUnit * 4;
  static const borderRadiusLg = baseUnit * 6;
  static const borderRadiusXl = baseUnit * 8;
  static const borderRadius2xl = baseUnit * 12;

  // Line width scale
  static const lineWidthXs = 1.0;
  static const lineWidthSm = 2.0;
  static const lineWidthMd = 3.0;
  static const lineWidthLg = 4.0;
  static const lineWidthXl = 5.0;
  static const lineWidth2xl = 6.0;
}
