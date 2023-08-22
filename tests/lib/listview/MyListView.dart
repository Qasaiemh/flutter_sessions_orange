import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyHomePage());
}



class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListTile Example'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Row(
                children: [
                  Text('Item 1'),
                  Text('Item 1'),
                ],
              ),
            ),
            ListTile(
              title: Text('Item 2'),
            ),  ListTile(
              title: Text('Item 3'),
            ),  ListTile(
              title: Text('Item 4'),
            ),  ListTile(
              title: Text('Item 5'),
            ),
          ],
        ),
      ),
    );
  }
}
