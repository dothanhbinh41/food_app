import 'package:flutter/cupertino.dart';
import 'package:food_app/widgets/buttons.dart';

import '../styles/colors.dart';

class WalkthroughPage extends StatelessWidget {
  const WalkthroughPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      alignment: Alignment.center,
      child: SecondaryButton(onPressed: () => {}, text: "Next"),
    );
  }
}
