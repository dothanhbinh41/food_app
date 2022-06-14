import 'package:flutter/material.dart';

import '../styles/colors.dart';
import '../styles/typographies.dart';

class MainInputDecoration extends InputDecoration {
  // ignore: prefer_const_constructors_in_immutables
  const MainInputDecoration({Icon? suffixIcon, String? hintText})
      : super(
            suffixIcon: suffixIcon,
            hintText: hintText,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: ThemeColors.strokeColor),
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: ThemeColors.strokeColor),
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
            suffixIconColor: ThemeColors.activeColor,
            hintStyle: Typographies.bodyHintText,
            contentPadding: const EdgeInsets.only(left: 20),
            fillColor: ThemeColors.inputColor);
}
