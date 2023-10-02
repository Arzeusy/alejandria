import 'package:alejandria/pages/home/screens/dashboard.dart';
import 'package:alejandria/pages/home/screens/planner.dart';
import 'package:alejandria/pages/login/UI/screens/login_page.dart';
import 'package:alejandria/pages/login/UI/screens/signup_page.dart';
import 'package:flutter/material.dart';
import '../pages/home/home.dart';
// import '../shared/Components/side_menu.dart';
import '../shared/function/routes_function.dart';

class HomeRoutes {
  static final Map<String, WidgetBuilder> _routesMap = {
    '': (context) => const LoginPageWidget(),
    'signup': (context) => const SignUpPageWidget(),
    'home': (context) => const DashBoardPage(),
    'planner': (context) => const PlannerPage(),
    'Tempo': (context) => const MyHomePage(
          title: "tempo",
        )
  };

  static const String _prefix = '/';

  static Map<String, WidgetBuilder> getRoutes() {
    return addPrefixToRoutes(_routesMap, _prefix);
  }
}
