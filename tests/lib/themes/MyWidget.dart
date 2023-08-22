import 'package:flutter/material.dart';

import 'ColorsManager.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsManager.primaryColor,
        title: const Text('Colors Manager Example'),
      ),
      body: Container(
        color: ColorsManager.backgroundColor,
        child: const Center(
          child: Text(
            'Welcome to my app!',
            style: TextStyle(
              color: ColorsManager.accentColor,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
