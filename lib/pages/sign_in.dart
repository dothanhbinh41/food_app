import 'package:flutter/material.dart';
import 'package:food_app/widgets/buttons.dart';

import '../styles/colors.dart';
import '../styles/themes.dart';
import '../styles/typographies.dart';
import '../widgets/appbars.dart';
import '../widgets/inputs.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SignInState();
}

class SignInState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    Themes.configStatusbar();
    return Scaffold(
      appBar: AppBarWidget(title: "Sign In"),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => {FocusScope.of(context).requestFocus(new FocusNode())},
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 20, top: 40),
              child: const Text(
                "Welcome to",
                style: Typographies.h1DartText,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 20, right: 100),
              child: RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                        text:
                            "Enter your Phone number or Email for sign in, Or ",
                        style: Typographies.bodyHintText),
                    WidgetSpan(
                        child: GestureDetector(
                      onDoubleTap: () => {},
                      child: const Text(
                        " Create new account.",
                        style: NormalTextStyle(
                            color: ThemeColors.activeColor,
                            fontSize: Typographies.bodyFontsize),
                      ),
                    )),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 24, 20, 12),
              child: const TextField(
                style: Typographies.bodyDartText,
                keyboardType: TextInputType.phone,
                decoration: MainInputDecoration(
                    hintText: "Phone", suffixIcon: Icon(Icons.phone_iphone)),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: const TextField(
                style: Typographies.bodyDartText,
                obscureText: true,
                keyboardType: TextInputType.text,
                decoration: MainInputDecoration(
                    hintText: "Password",
                    suffixIcon: Icon(Icons.remove_red_eye)),
              ),
            ),
            SizedBox(
              height: 48,
              child: GestureDetector(
                child: const Text(
                  "Forgot Password",
                  style: Typographies.captionDartText,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              height: 44,
              width: MediaQuery.of(context).size.width,
              child: PrimaryButton(onPressed: () => {}, text: "SignIn"),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 8, 20, 8),
              height: 44,
              alignment: Alignment.center,
              child: const Text(
                "Or",
                style: Typographies.bodyDartText,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              height: 44,
              width: MediaQuery.of(context).size.width,
              child: SocialButton(
                onPressed: () => {},
                text: "Connect with Facebook",
                icon: Image.asset("images/rec_facebook.png"),
                color: ThemeColors.facebookColor,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              height: 44,
              width: MediaQuery.of(context).size.width,
              child: SocialButton(
                onPressed: () => {},
                text: "Connect with google",
                icon: Image.asset("images/rec_google.png"),
                color: ThemeColors.googleColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
