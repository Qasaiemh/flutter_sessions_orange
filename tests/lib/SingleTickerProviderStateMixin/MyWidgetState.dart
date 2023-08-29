import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyAnimatedWidget(),
    );
  }
}

class MyAnimatedWidget extends StatefulWidget {
  @override
  _MyAnimatedWidgetState createState() => _MyAnimatedWidgetState();
}

class _MyAnimatedWidgetState extends State<MyAnimatedWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Create an AnimationController with a 2-second duration
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this, // Use this widget's state as the TickerProvider
    );

    // Create an animation that interpolates between values 0.0 and 1.0
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller)
      ..addListener(() {
        setState(() {
          // Trigger a rebuild whenever the animation value changes
        });
      });

    // Run the animation in a loop with reverse
    _controller.repeat(reverse:true);
  }


  @override
  void dispose() {
    _controller.dispose(); // Dispose of the AnimationController
    super.dispose(); // Call the dispose method of the parent class (State)
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animation Example')),
      body: Center(
        child: Opacity(
          opacity: _animation.value,
          child: Text("test"),
        ),
      ),
    );
  }
}
