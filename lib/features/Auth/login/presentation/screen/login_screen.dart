import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';
import 'package:mentorship_e1_g3/core/widgets/btn_loader.dart';
import 'package:mentorship_e1_g3/features/Auth/login/cubit/login_cubit.dart';

import '../../../../../core/widgets/background_image.dart';
import '../../../../../core/widgets/background_ovarlay.dart';
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const BackgroundImage(image: "assets/images/login_screen/1.jpg"),
            const BackgroundOvarlay(opacity: 0.3),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 120),
              child: Column(children: [
                const LogoBanar(),
                const LoginFields(),
                const ForgetPasswordBTN(),
                BlocBuilder<LoginCubit, LoginState>(
                  builder: (context, state) {
                    return CustomBTN(
                      press: () {
                        context.read<LoginCubit>().loginByEmailandPass(context);
                      },
                      widget: state is LoginLoading
                          ? const BtnLoader(color: AppPalette.violet)
                          : const Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                      width: double.infinity,
                      color: Colors.white,
                    );
                  },
                ),
                const LoginWithText(),
                const SocialLogin(),
                const RegisterTextBtn()
              ]),
            )
          ],
        ),
      ),
    );
  }
}
