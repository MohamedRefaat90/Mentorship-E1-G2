import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/helpers/functions/snakbar.dart';
import '../../../../../core/routing/app_routing.dart';
import '../../../../../core/themes/app_pallete.dart';
import '../../../../../core/widgets/btn_loader.dart';
import '../../../../../core/widgets/custom_btn.dart';
import '../../../login/presentation/screen/login_screen.dart';
import '../../cubits/fields_validator/fields_validator_cubit.dart';
import '../../cubits/signup/signup_cubit.dart';

class SubmitBtn extends StatelessWidget {
  const SubmitBtn({super.key});

  @override
  Widget build(BuildContext context) {
    SignupCubit signupCubit = BlocProvider.of<SignupCubit>(context);
    FieldsValidatorCubit fieldValidatorCubit =
        BlocProvider.of<FieldsValidatorCubit>(context);
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
              state is SignupLoading ? const BtnLoader() : const Text("Submit"),
          width: double.infinity,
          press: () {
            signupCubit.signupUser(fieldValidatorCubit);
          }),
    );
  }
}
