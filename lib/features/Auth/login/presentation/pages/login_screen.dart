import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_btn.dart';
import '../widgets/forget_password_btn.dart';
import '../widgets/login_fields.dart';
import '../widgets/login_with_text.dart';
import '../widgets/logo_banar.dart';
import '../widgets/register_text_btn.dart';
import '../widgets/social_login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 120),
        child: SingleChildScrollView(
          child: Column(children: [
            const LogoBanar(),
            const LoginFields(),
            const ForgetPasswordBTN(),
            CustomBTN(
              press: () {},
              widget: const Text(
                "Login",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
              width: double.infinity,
              color: Colors.white,
            ),
            const LoginWithText(),
            const SocialLogin(),
            const RegisterTextBtn()
          ]),
        ),
      )),
    );
  }
}
