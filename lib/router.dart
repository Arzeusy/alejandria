import 'package:alejandria/shared/function/routes_function.dart';
import 'package:flutter/material.dart';
import 'routes/routes_home.dart';
import 'routes/routes_user.dart';
import 'package:alejandria/main.dart';

final List<Map<String, WidgetBuilder>> allRouteMaps = [
  HomeRoutes.getRoutes(objectBox),
  UserRoutes.getRoutes(objectBox)
];

final Map<String, WidgetBuilder> combinedRoutes =
    combineRouteMaps(allRouteMaps);

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final String? name = settings.name;
    final WidgetBuilder? builder = combinedRoutes[name!];
    return MaterialPageRoute(builder: (context) => builder!(context));
  }
}
