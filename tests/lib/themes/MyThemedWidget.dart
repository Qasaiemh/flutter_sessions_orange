import 'package:flutter/material.dart';

import 'AppThemes.dart';
import 'MyWidget.dart';

void main() {
  runApp(MyThemedWidget(isDarkMode: false));
}
class MyThemedWidget extends StatelessWidget {
  final bool isDarkMode;

  MyThemedWidget({required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: MyWidget(),
    );
  }
}


class ThemedApp extends StatefulWidget {
  @override
  _ThemedAppState createState() => _ThemedAppState();
}

class _ThemedAppState extends State<ThemedApp> {
  bool _isDarkMode = false;

  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _isDarkMode ? AppThemes.darkTheme : AppThemes.lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Themed App Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Switch Theme:',
                style: TextStyle(fontSize: 20),
              ),
              Switch(
                value: _isDarkMode,
                onChanged: (value) {
                  _toggleTheme();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}


