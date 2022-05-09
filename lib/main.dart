import 'package:flutter/material.dart';
import 'package:food_app/screens/authentication/authentication_view.dart';
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
      home: const AuthenticationView(),
    );
  }
}
