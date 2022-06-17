// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../styles/colors.dart';
import '../styles/typographies.dart';

class PrimaryButton extends ElevatedButton {
  // ignore: prefer_const_constructors_in_immutables
  PrimaryButton({required VoidCallback? onPressed, required String text})
      : super(
          onPressed: onPressed,
          child: Text(text.toUpperCase(),
              style: Typographies.primaryButtonLightText),
          style: ElevatedButton.styleFrom(
            primary: ThemeColors.activeColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        );
}

class SecondaryButton extends ElevatedButton {
  // ignore: prefer_const_constructors_in_immutables
  SecondaryButton({required VoidCallback? onPressed, required String text})
      : super(
          onPressed: onPressed,
          child: Text(text.toUpperCase(),
              style: Typographies.primaryButtonDartText),
          style: ElevatedButton.styleFrom(
            primary: ThemeColors.bgColor,
            onPrimary: ThemeColors.activeColor,
            shadowColor: ThemeColors.activeColor.withOpacity(0.4),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            side: const BorderSide(
              width: 1,
              color: ThemeColors.activeColor,
            ),
          ),
        );
}

class SocialButton extends ElevatedButton {
  // ignore: prefer_const_constructors_in_immutables
  SocialButton(
      {required VoidCallback? onPressed,
      required String text,
      Color? color,
      Widget? icon})
      : super(
          onPressed: onPressed,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 7,
                child: Container(
                  height: 28,
                  width: 28,
                  alignment: Alignment.center,
                  child: icon,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4)),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  text.toUpperCase(),
                  style: Typographies.primaryButtonLightText,
                ),
              ),
            ],
          ),
          style: ElevatedButton.styleFrom(
            primary: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        );
}
