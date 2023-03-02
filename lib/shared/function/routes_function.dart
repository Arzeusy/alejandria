import 'package:flutter/material.dart';

Map<String, WidgetBuilder> addPrefixToRoutes(
    Map<String, WidgetBuilder> routesMap, String prefix) {
  final Map<String, WidgetBuilder> newRoutesMap = {};
  routesMap.forEach((route, builder) {
    final String newRoute = '$prefix$route';
    newRoutesMap[newRoute] = builder;
  });
  return newRoutesMap;
}

Map<String, WidgetBuilder> combineRouteMaps(
    List<Map<String, WidgetBuilder>> routeMaps) {
  Map<String, WidgetBuilder> combinedMap = {};
  for (var routeMap in routeMaps) {
    combinedMap.addAll(routeMap);
  }
  return combinedMap;
}
