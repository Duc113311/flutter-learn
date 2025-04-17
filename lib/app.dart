import 'package:flutter/material.dart';
import 'package:my_flutter_app/routes/route_generator.dart';
import 'config/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clean App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light, // file config theme
      initialRoute: RouteGenerator.main, // tab bar 5 màn là route chính
      routes: RouteGenerator.routes, // khai báo route trong app
    );
  }
}
