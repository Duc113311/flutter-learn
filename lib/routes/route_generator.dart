import 'package:flutter/material.dart';
import '../../presentation/screens/main_navigation/main_navigation_screen.dart';

class RouteGenerator {
  static const String main = '/main';

  static final routes = <String, WidgetBuilder>{
    main: (context) => const MainNavigationScreen(),
  };
}
