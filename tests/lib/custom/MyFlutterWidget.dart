// my_flutter_widget.dart
import 'package:flutter/material.dart';
import '';

class MyFlutterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Embedded Native View')),
      body: Center(
        child: MyNativeView(),
      ),
    );
  }
}
