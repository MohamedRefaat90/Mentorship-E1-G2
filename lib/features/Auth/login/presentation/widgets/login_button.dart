import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';
import 'package:mentorship_e1_g3/features/Auth/login/cubit/login_cubit.dart';

import '../../../../../core/widgets/btn_loader.dart';
import '../../../../../core/widgets/custom_btn.dart';
import '../../../../../core/widgets/done_animation_button.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return CustomBTN(
          press: () {
            context.read<LoginCubit>().loginByEmailandPass(context);
          },
          widget: state is LoginLoading
              ? const BtnLoader(color: AppPalette.redColor)
              : state is LoginSuccess
                  ? const DoneAnimationButton()
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
    );
  }
}
