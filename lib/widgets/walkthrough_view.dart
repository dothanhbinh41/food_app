import 'package:flutter/cupertino.dart';
import '../styles/typographies.dart';

class WalkthoughModel {
  String? title;
  String? description;
  String? image;
  int position;
  WalkthoughModel(this.position) {
    title = titles[position];
    description = des[position];
    image = images[position];
  }
  static final max = titles.length;

  static const titles = [
    "All your favorites",
    "Free delivery offers",
    "Choose your food"
  ];

  static const images = [
    "assets/images/walkthrough1.png",
    "assets/images/walkthrough2.png",
    "assets/images/walkthrough3.png",
  ];

  static const des = [
    "Order from the best local restaurants with easy, on-demand delivery.",
    "Free delivery for new customers via Apple Pay and others payment methods.",
    "Easily find your type of food craving and you’ll get delivery in wide range."
  ];
}

// ignore: must_be_immutable
class WalkthroughView extends StatelessWidget {
  int position;
  WalkthoughModel? model;
  WalkthroughView(this.position, {Key? key}) : super(key: key) {
    model = WalkthoughModel(position);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Center(
          child: Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: 300,
            child: Image.asset(model!.image ?? ""),
          ),
        ),
        Column(
          children: [
            Expanded(
              child: Container(),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(40, 32, 40, 0),
              child: Text(
                model!.title ?? "",
                textAlign: TextAlign.center,
                style: Typographies.headlineDartText,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(40, 12, 40, 0),
              child: Text(
                model!.description ?? "",
                textAlign: TextAlign.center,
                softWrap: true,
                style: Typographies.bodyDartText,
              ),
            ),
          ],
        )
      ],
    );
  }
}
