import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spacexx/core/themes/app_pallete.dart';
import 'package:spacexx/features/Auth/login/cubit/login_cubit.dart';

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
              ? const BtnLoader(color: AppPalette.rose)
              : state is LoginSuccess
                  ? const DoneAnimationButton()
                  : Text(
                      "Login",
                      style: GoogleFonts.kronaOne().copyWith(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
          width: double.infinity,
          color: Colors.white,
        );
      },
    );
  }
}
