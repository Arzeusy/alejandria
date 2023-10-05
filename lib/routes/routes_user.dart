import 'package:flutter/material.dart';
import '../db/objectbox.dart';
import '../shared/function/routes_function.dart';
import '../pages/user/screens/profile.dart';

class UserRoutes {
  static final Map<String, WidgetBuilder> _routesMap = {
    'profile': (context) => ProfilePage(
          obm: obm,
        ),
  };

  static const String _prefix = 'user/';
  static late ObjectBoxManager obm;

  static Map<String, WidgetBuilder> getRoutes(
      ObjectBoxManager objectBoxManager) {
    obm = objectBoxManager;

    return addPrefixToRoutes(_routesMap, _prefix);
  }
}
