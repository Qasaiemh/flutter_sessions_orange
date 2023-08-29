// MyFlutterWidget.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyFlutterWidget(),
    );
  }
}
class MyFlutterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Embedded Native View')),
      body: Center(
        child: AndroidView(
          viewType: 'my_custom_view',
          creationParams: <String, dynamic>{},
          creationParamsCodec: StandardMessageCodec(),
        ),
      ),
    );
  }
}
