import 'package:alejandria/shared/function/routes_function.dart';
import 'package:flutter/material.dart';
import 'routes/routes_home.dart';

final List<Map<String, WidgetBuilder>> allRouteMaps = [
  HomeRoutes.getRoutes(),
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
