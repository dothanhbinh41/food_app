import 'package:flutter/material.dart';
import 'package:food_app/widgets/buttons.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../styles/colors.dart';
import '../widgets/walkthrough_view.dart';

class WalkthroughPage extends StatefulWidget {
  const WalkthroughPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return WalkthroughState();
  }
}

class WalkthroughState extends State<WalkthroughPage> {
  double? current = 0;
  PageController controller = PageController();
  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        current = controller.page;
        if ((current ?? 0) <= WalkthoughModel.max - 1) {
          //do something
        }
      });
    });
    current = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.bgColor,
      body: Stack(
        children: [
          PageView.builder(
            itemCount: WalkthoughModel.max,
            scrollDirection: Axis.horizontal,
            controller: controller,
            itemBuilder: (context, position) {
              return Transform(
                transform: Matrix4.identity()
                  ..rotateX((current ?? 0) - position),
                child: Container(
                  child: WalkthroughView(position),
                  padding: const EdgeInsets.only(bottom: 200),
                ),
              );
            },
          ),
          Column(
            children: [
              Expanded(child: Container()),
              SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: WormEffect(
                    dotWidth: 10,
                    dotHeight: 6,
                    dotColor: ThemeColors.bodyTextColor.withAlpha(40),
                    radius: 4,
                    activeDotColor: ThemeColors.activeColor),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 60, 20, 60),
                height: 44,
                width: MediaQuery.of(context).size.width,
                child: PrimaryButton(
                    onPressed: () => {
                          controller.nextPage(
                              duration: const Duration(seconds: 1),
                              curve: Curves.ease)
                        },
                    text: "Get Started"),
              )
            ],
          )
        ],
      ),
    );
  }
}
