import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_e1_g3/features/Auth/signup/presentation/cubit/signup_cubit.dart';

import 'validator_text.dart';

class PasswordValidationRules extends StatelessWidget {
  const PasswordValidationRules({super.key});

  @override
  Widget build(BuildContext context) {
    SignupCubit cubit = BlocProvider.of<SignupCubit>(context);
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      ValidatorText(
          title: "Must must larger then 8",
          rule: cubit.isPassLengthLargerThan8),
      ValidatorText(
          title: "Must Contain Upper Character",
          rule: cubit.isContainUpperChar),
      ValidatorText(
          title: "Must Contain Lower Character",
          rule: cubit.isContainLowerChar),
      ValidatorText(title: "Must Contain Number", rule: cubit.isContainNum),
      ValidatorText(
          title: "Must Contain Special Character",
          rule: cubit.isContainSpecailChar),
    ]);
  }
}
