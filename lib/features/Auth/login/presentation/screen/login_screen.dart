import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';
import 'package:mentorship_e1_g3/features/Auth/login/cubit/login_cubit.dart';
import 'package:mentorship_e1_g3/features/Auth/login/presentation/widgets/otp_fields.dart';

import '../../../../../core/widgets/custom_btn.dart';
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
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Scaffold(
        body: SafeArea(
            child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 120),
          child: SingleChildScrollView(
            child: Column(children: [
              const LogoBanar(),
              const LoginFields(),
              const ForgetPasswordBTN(),
              CustomBTN(
                press: () {
                  // pushReplacement(const HomeScreen());
                  showModalBottomSheet(
                      context: context,
                      builder: (context) => DefaultTextStyle(
                            style: const TextStyle(color: Colors.black),
                            child: Container(
                              width: double.infinity,
                              height: 400,
                              padding: const EdgeInsets.all(20),
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20))),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "OTP Varification",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      "Enter OTP That Sent Via sms",
                                      style: TextStyle(),
                                    ),
                                    const SizedBox(height: 20),
                                    const OtpFields(),
                                    const SizedBox(height: 20),
                                    Center(
                                      child: CustomBTN(
                                          widget: const Text("Submit"),
                                          color: AppPallete.violet,
                                          width: 200,
                                          press: () {}),
                                    )
                                  ]),
                            ),
                          ));
                },
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
      ),
    );
  }
}
