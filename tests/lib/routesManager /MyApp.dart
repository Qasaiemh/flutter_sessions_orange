import 'package:flutter/material.dart';

import 'RoutesManager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      initialRoute: '/',
      routes: RoutesManager.routes,
    );
  }
}
