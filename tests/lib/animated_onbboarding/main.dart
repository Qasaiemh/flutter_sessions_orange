import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:get/get.dart';
import 'package:test1/animated_onbboarding/screens/onboard/onboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Onboard(),
      theme: ThemeData(primaryColor: const Color(0xFF4A00E0)),
    );
  }
}
