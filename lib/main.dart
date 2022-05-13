import 'package:flutter/material.dart';
import 'package:food_app/constant/route_name.dart';
import 'package:food_app/services/navigation_service.dart';
import 'package:food_app/themes/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.theme,
      home: Wrapper(),
    );
  }
}

class FodaApp extends StatelessWidget {
  const FodaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.theme,
      home: const Wrapper(),
    );
  }
}

class Wrapper extends StatelessWidget {
  const Wrapper({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        key: NavigationService.intance.navigatorKey,
        onGenerateRoute: NavigationService.intance.onGeneratedRoute,
        initialRoute: welcomePath,
      ),
    );
  }
}
