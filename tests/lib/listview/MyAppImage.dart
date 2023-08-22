import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Asset Image List Example'),
      ),
      body: MyImageList(),
    );
  }
}

class MyImageList extends StatelessWidget {
  final List<String> imageNames = ['image1.png', 'image2.png', 'image3.png','image4.png'];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: imageNames.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: Container(
            margin: EdgeInsets.all(5),
            child: Image.asset(
              'assets/images/${imageNames[index]}',
              width: 100,
              height: 100,
            ),
          ),
          title: Row(
            children: [
              Text('Image ${index + 1}'),
              Text('Image ${index + 1}'),

            ],
          ),
        );
      },
    );
  }
}
