import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_e1_g3/core/helpers/functions/snakbar.dart';
import 'package:mentorship_e1_g3/core/routing/app_routing.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';

import '../../../../../core/widgets/btn_loader.dart';
import '../../../../../core/widgets/custom_btn.dart';
import '../../../login/presentation/screen/login_screen.dart';
import '../../cubit/signup_cubit.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({super.key});

  @override
  Widget build(BuildContext context) {
    SignupCubit cubit = BlocProvider.of<SignupCubit>(context);
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccess) {
          pushReplacement(const LoginScreen());
        } else if (state is SignupFailure) {
          showSnackBar(context, state.errorMSG);
        }
      },
      builder: (context, state) => CustomBTN(
          color: AppPallete.violet,
          widget:
              state is SignupLoading ? const BtnLoader() : const Text("Signup"),
          width: double.infinity,
          press: () {
            cubit.signupUser();
          }),
    );
  }
}
