import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../styles/colors.dart';

class AppBarWidget extends AppBar {
  AppBarWidget({
    Key? key,
    VoidCallback? onBackPressed,
    String title = "",
    List<Widget> rightActions = const [],
    bool showBackButton = true,
  }) : super(
            key: key,
            centerTitle: true,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            foregroundColor: ThemeColors.mainColor,
            title: Text(title),
            toolbarHeight: 44,
            leading: showBackButton
                ? IconButton(
                    onPressed: onBackPressed,
                    iconSize: 20,
                    icon: const Icon(Icons.arrow_back_ios_rounded,
                        color: ThemeColors.mainColor))
                : null,
            actions: rightActions,
            systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
                statusBarColor: Colors.transparent,
                systemNavigationBarColor: Colors.transparent));
}
