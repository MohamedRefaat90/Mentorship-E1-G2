import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spacexx/core/extension/num_extension.dart';
import 'package:spacexx/features/Auth/login/presentation/widgets/login_button.dart';

import '../../../../../core/resources/assets.dart';
import '../../../../../core/widgets/background_image.dart';
import '../../../../../core/widgets/background_ovarlay.dart';
import '../widgets/forget_password_btn.dart';
import '../widgets/login_fields.dart';
import '../widgets/login_with_text.dart';
import '../widgets/logo_banar.dart';
import '../widgets/register_text_btn.dart';
import '../widgets/social_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const BackgroundImage(image: Assets.loginBackground),
            const BackgroundOvarlay(opacity: 0.3),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20)
                  .copyWith(top: 150.height),
              child: DefaultTextStyle(
                style: GoogleFonts.kronaOne(),
                child: const Column(children: [
                  LogoBanar(),
                  LoginFields(),
                  ForgetPasswordBTN(),
                  LoginButton(),
                  LoginWithText(),
                  SocialLogin(),
                  RegisterTextBtn()
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
