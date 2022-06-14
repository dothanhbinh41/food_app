import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/pages/walkthrough.dart';
import 'package:food_app/styles/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Themes.configStatusbar();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Themes.mainTheme,
      home: const WalkthroughPage(),
    );
  }
}
