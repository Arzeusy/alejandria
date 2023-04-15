import 'package:alejandria/pages/login/UI/login_page.dart';
import 'package:flutter/material.dart';
import '../pages/home/home.dart';
import '../shared/function/routes_function.dart';

class HomeRoutes {
  static final Map<String, WidgetBuilder> _routesMap = {
    '': (context) => const LoginPageWidget(),
    'home': (context) => const MyHomePage(
          title: 'Home',
        ),
  };

  static const String _prefix = '/';

  static Map<String, WidgetBuilder> getRoutes() {
    return addPrefixToRoutes(_routesMap, _prefix);
  }
}
