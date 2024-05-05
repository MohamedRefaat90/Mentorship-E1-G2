import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/core/widgets/done_animation_button.dart';
import 'package:spacex/features/Auth/signup/data/models/user_model.dart';

import '../../../../../core/helpers/functions/snakbar.dart';
import '../../../../../core/routing/app_routing.dart';
import '../../../../../core/themes/app_pallete.dart';
import '../../../../../core/widgets/btn_loader.dart';
import '../../../../../core/widgets/custom_btn.dart';
import '../../../login/presentation/screen/login_screen.dart';
import '../../cubits/fields_validator/fields_validator_cubit.dart';
import '../../cubits/signup/signup_cubit.dart';

class SignupBtn extends StatelessWidget {
  const SignupBtn({super.key, required this.email, required this.password});

  final String email;
  final String password;

  @override
  Widget build(BuildContext context) {
    SignupCubit signupCubit = BlocProvider.of<SignupCubit>(context);
    FieldsValidatorCubit fieldValidatorCubit =
        BlocProvider.of<FieldsValidatorCubit>(context);
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccess) {
          Future.delayed(const Duration(seconds: 2),
              () => pushReplacement(const LoginScreen()));
        } else if (state is SignupFailure) {
          showSnackBar(context, state.errorMSG!);
        }
      },
      builder: (context, state) => AnimatedContainer(
        duration: const Duration(milliseconds: 700),
        decoration: BoxDecoration(
            color: state is SignupSuccess ? Colors.white : AppPalette.rose,
            borderRadius: BorderRadius.circular(20)),
        child: CustomBTN(
            widget: state is SignupLoading
                ? const BtnLoader()
                : state is SignupSuccess
                    ? const DoneAnimationButton()
                    : const Text("Signup"),
            width: double.infinity,
            padding: 25,
            press: () {
              signupCubit.user = UserModel(email: email, password: password);
              signupCubit.emitSignupUser(fieldValidatorCubit, context);
            }),
      ),
    );
  }
}
