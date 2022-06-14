import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';

Map<int, Color> color = {
  50: ThemeColors.activeColor.withAlpha(10),
  100: ThemeColors.activeColor.withAlpha(20),
  200: ThemeColors.activeColor.withAlpha(30),
  300: ThemeColors.activeColor.withAlpha(40),
  400: ThemeColors.activeColor.withAlpha(50),
  500: ThemeColors.activeColor.withAlpha(60),
  600: ThemeColors.activeColor.withAlpha(70),
  700: ThemeColors.activeColor.withAlpha(80),
  800: ThemeColors.activeColor.withAlpha(90),
  900: ThemeColors.activeColor,
};

class Themes {
  static ThemeData mainTheme = ThemeData(
      scaffoldBackgroundColor: ThemeColors.bgColor,
      brightness: Brightness.dark,
      primarySwatch: MaterialColor(ThemeColors.activeColor.value, color));

  static void configStatusbar() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent));
  }
}
