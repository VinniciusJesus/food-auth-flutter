import 'package:flutter/material.dart';
import 'package:food_app/constant/image_path.dart';

import '../../components/amaoba_paint.dart';
import '../../components/app_scaffold.dart';
import '../../components/foda_button.dart';
import '../../components/oval_paint.dart';
import '../../constant/route_name.dart';
import '../../themes/app_theme.dart';
import '../authentication/authentication_view.dart';

class OnboardView extends StatelessWidget {
  const OnboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const OvalPaint(),
            const AmaobaPaint(),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    ImagePath.discuss,
                    height: 400,
                  ),
                  const SizedBox(height: AppTheme.cardPadding),
                  Image.asset(ImagePath.logo),
                  const SizedBox(height: AppTheme.cardPadding),
                  SizedBox(
                    width: AppTheme.size(context).width * 0.6,
                    child: Column(
                      children: [
                        const AuthHeader("Welcome\nto Food Delivery"),
                        const SizedBox(height: AppTheme.cardPadding),
                        FodaButton(
                            title: "Sign In",
                            onTap: () {
                              Navigator.of(context).pushNamed(authPath,
                                  arguments: AuthenticationViewState.signIn);
                            }),
                        const SizedBox(height: AppTheme.elementSpacing),
                        FodaButton(
                          title: "Sign Up",
                          gradiant: const [AppTheme.darkBlue],
                          onTap: () {
                            Navigator.of(context).pushNamed(authPath,
                                arguments: AuthenticationViewState.signUp);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AuthHeader extends StatelessWidget {
  final String title;
  const AuthHeader(
    this.title, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline1?.copyWith(
            fontWeight: FontWeight.w800,
            color: AppTheme.orange,
            height: 1,
          ),
    );
  }
}
