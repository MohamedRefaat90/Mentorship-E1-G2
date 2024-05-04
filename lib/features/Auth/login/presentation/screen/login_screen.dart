import '../widgets/logo_banar.dart';
import '../widgets/login_button.dart';
import '../widgets/login_fields.dart';
import '../widgets/social_login.dart';
import 'package:flutter/material.dart';
import '../widgets/login_with_text.dart';
import '../widgets/register_text_btn.dart';
import '../widgets/forget_password_btn.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 120),
        child: const SingleChildScrollView(
          child: Column(children: [
            LogoBanar(),
            LoginFields(),
            ForgetPasswordBTN(),
            LoginButton(),
            LoginWithText(),
            SocialLogin(),
            RegisterTextBtn()
          ]),
        ),
      )),
    );
  }
}