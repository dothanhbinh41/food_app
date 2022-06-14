import 'package:flutter/material.dart';
import './colors.dart';

class DefaultTextStyle extends TextStyle {
  const DefaultTextStyle(
      {Color? color, FontWeight? fontWeight, double? fontSize})
      : super(
            fontFamily: Typographies.defaultFont,
            fontSize: fontSize,
            color: color,
            fontWeight: fontWeight);
}

class NormalTextStyle extends DefaultTextStyle {
  const NormalTextStyle({Color? color, double? fontSize})
      : super(fontSize: fontSize, color: color, fontWeight: FontWeight.normal);
}

class MediumTextStyle extends DefaultTextStyle {
  const MediumTextStyle({Color? color, double? fontSize})
      : super(fontSize: fontSize, color: color, fontWeight: FontWeight.w400);
}

class SemiboldTextStyle extends DefaultTextStyle {
  const SemiboldTextStyle({Color? color, double? fontSize})
      : super(fontSize: fontSize, color: color, fontWeight: FontWeight.w500);
}

class BoldTextStyle extends DefaultTextStyle {
  const BoldTextStyle({Color? color, double? fontSize})
      : super(fontSize: fontSize, color: color, fontWeight: FontWeight.bold);
}

class Typographies {
  static const defaultFont = "SF Pro Display";
  static const double h1Fontsize = 34;
  static const double h2Fontsize = 28;
  static const double h3Fontsize = 24;
  static const double headlineFontsize = 30;
  static const double subheadFontsize = 20;
  static const double bodyFontsize = 16;
  static const double captionFontsize = 12;
  static const double buttonFontsize = 14;
  static const double buttonHeight = 44;

  static const h1DartText =
      MediumTextStyle(color: ThemeColors.mainColor, fontSize: h1Fontsize);
  static const h1LightText =
      MediumTextStyle(color: ThemeColors.bgColor, fontSize: h1Fontsize);

  static const h2DartText =
      SemiboldTextStyle(color: ThemeColors.mainColor, fontSize: h2Fontsize);
  static const h2LightText =
      SemiboldTextStyle(color: ThemeColors.bgColor, fontSize: h2Fontsize);

  static const h3DartText =
      SemiboldTextStyle(color: ThemeColors.mainColor, fontSize: h3Fontsize);
  static const h3LightText =
      SemiboldTextStyle(color: ThemeColors.bgColor, fontSize: h3Fontsize);

  static const headlineDartText =
      BoldTextStyle(color: ThemeColors.mainColor, fontSize: headlineFontsize);
  static const headlineLightText =
      BoldTextStyle(color: ThemeColors.bgColor, fontSize: headlineFontsize);

  static const bodyDartText =
      NormalTextStyle(color: ThemeColors.mainColor, fontSize: bodyFontsize);
  static const bodyLightText =
      NormalTextStyle(color: ThemeColors.bgColor, fontSize: bodyFontsize);

  static const subheadDartText =
      MediumTextStyle(color: ThemeColors.mainColor, fontSize: subheadFontsize);
  static const subheadLightText =
      MediumTextStyle(color: ThemeColors.bgColor, fontSize: subheadFontsize);

  static const captionDartText =
      MediumTextStyle(color: ThemeColors.mainColor, fontSize: captionFontsize);
  static const captionLightText =
      MediumTextStyle(color: ThemeColors.bgColor, fontSize: captionFontsize);

  static const primaryButtonLightText =
      BoldTextStyle(color: ThemeColors.bgColor, fontSize: buttonFontsize);

  static const primaryButtonDartText =
      BoldTextStyle(color: ThemeColors.activeColor, fontSize: buttonFontsize);
}
