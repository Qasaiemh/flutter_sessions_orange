import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class RoutesManager {
  static Map<String, WidgetBuilder> routes = {
    '/': (context) => HomeScreen(),
    '/details': (context) => DetailsScreen(),
    // Add more routes as needed
  };

  static void navigateTo(BuildContext context, String routeName, {dynamic arguments}) {
    Navigator.pushNamed(context, routeName, arguments: arguments);
  }

  static void navigateBack(BuildContext context) {
    Navigator.pop(context);
  }
}
