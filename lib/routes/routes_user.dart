import 'package:flutter/material.dart';
import '../shared/function/routes_function.dart';
import '../pages/user/screens/profile.dart';

class UserRoutes {
  static final Map<String, WidgetBuilder> _routesMap = {
    'profile': (context) => const ProfilePage(),
  };

  static const String _prefix = 'user/';

  static Map<String, WidgetBuilder> getRoutes() {
    return addPrefixToRoutes(_routesMap, _prefix);
  }
}
