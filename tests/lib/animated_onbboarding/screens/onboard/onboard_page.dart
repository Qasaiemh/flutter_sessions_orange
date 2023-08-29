import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart'; // Importing the Lottie package
import 'package:test1/animated_onbboarding/components/fading_sliding_widget.dart';
import 'package:test1/animated_onbboarding/model/onboard_page_item.dart';

class OnboardPage extends StatefulWidget {
  final OnboardPageItem onboardPageItem;

  OnboardPage({required this.onboardPageItem}); // Constructor that takes an OnboardPageItem

  @override
  _OnboardState createState() => _OnboardState();
}

class _OnboardState extends State<OnboardPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(vsync: this); // Initializing the AnimationController
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose(); // Disposing the AnimationController
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(top: height * 0.15), // Adding padding to the top of the container
      child: Column(
        children: <Widget>[
          Lottie.asset(
            widget.onboardPageItem.lottieAsset, // Displaying a Lottie animation
            controller: _animationController, // Attaching the AnimationController
            onLoaded: (composition) {
              _animationController
                ..duration = composition.duration // Setting animation duration
                ..forward() // Starting the animation
                ..addListener(() {
                  // if (widget.onboardPageItem.animationDuration != null) {
                  //   if (_animationController.lastElapsedDuration! >
                  //       widget.onboardPageItem.animationDuration) {
                  //     _animationController.stop(); // Stopping the animation
                  //   }
                  // }
                });
            },
            width: width * 0.9,
          ),
          SizedBox(height: height * 0.1), // Adding some space below the animation
          Flexible(
            child: FadingSlidingWidget(
              animationController: _animationController,
              interval: const Interval(0.2, 0.5),
              child: Text(
                widget.onboardPageItem.text, // Displaying text content
                style: TextStyle(
                  fontSize: width * 0.05,
                  fontFamily: 'ProductSans',
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
