import 'dart:math';

import 'package:flutter/material.dart';
import 'package:food_app/components/app_scaffold.dart';
import 'package:food_app/constant/image_path.dart';
import 'package:food_app/themes/app_theme.dart';

import '../../components/amaoba_paint.dart';

class AuthenticationView extends StatelessWidget {
  const AuthenticationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Stack(
        children: [
          Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationY(pi),
            child: AmaobaPaint(
              color: AppTheme.darkBlueLight,
            ),
          ),
          Positioned(
            right: -60,
            top: -10,
            child: Image.asset(
              ImagePath.salad,
              height: 300,
            ),
          )
        ],
      ),
    );
  }
}
