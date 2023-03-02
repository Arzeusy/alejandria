import 'package:alejandria/main.dart';
import 'package:alejandria/pages/login/UI/login_page.dart';
import 'package:flutter/material.dart';
import '../shared/function/routes_function.dart';

class HomeRoutes {
  static final Map<String, WidgetBuilder> _routesMap = {
    '': (context) => const LoginScreen(),
    'second': (context) => const SecondScreen(),
    'home': (context) => const MyHomePage(
          title: 'Home 2',
        ),
  };

  static const String _prefix = '/';

  static Map<String, WidgetBuilder> getRoutes() {
    return addPrefixToRoutes(_routesMap, _prefix);
  }
}
