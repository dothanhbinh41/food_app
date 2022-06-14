// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../styles/colors.dart';
import '../styles/typographies.dart';

class PrimaryButton extends ElevatedButton {
  // ignore: prefer_const_constructors_in_immutables
  PrimaryButton({required VoidCallback? onPressed, required String text})
      : super(
          onPressed: onPressed,
          child: Text(text, style: Typographies.primaryButtonLightText),
          style: ElevatedButton.styleFrom(
            primary: ThemeColors.activeColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            minimumSize: const Size(100, Typographies.buttonHeight),
          ),
        );
}

class SecondaryButton extends ElevatedButton {
  // ignore: prefer_const_constructors_in_immutables
  SecondaryButton({required VoidCallback? onPressed, required String text})
      : super(
          onPressed: onPressed,
          child: Text(text, style: Typographies.primaryButtonDartText),
          style: ElevatedButton.styleFrom(
            primary: ThemeColors.bgColor,
            onPrimary: ThemeColors.activeColor,
            shadowColor: ThemeColors.activeColor.withOpacity(0.4),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            minimumSize: const Size(100, Typographies.buttonHeight),
            side: const BorderSide(
              width: 1,
              color: ThemeColors.activeColor,
            ),
          ),
        );
}
