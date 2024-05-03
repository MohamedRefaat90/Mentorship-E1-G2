import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_e1_g3/features/Auth/signup/cubits/fields_validator/fields_validator_cubit.dart';
import 'package:mentorship_e1_g3/features/Auth/signup/cubits/signup/signup_cubit.dart';

import 'validator_text.dart';

class PasswordValidationRules extends StatelessWidget {
  const PasswordValidationRules({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      ValidatorText(
          title: "Must must larger then 8",
          rule: context.read<FieldsValidatorCubit>().isPassLengthLargerThan8),
      ValidatorText(
          title: "Must Contain Upper Character",
          rule: context.read<FieldsValidatorCubit>().isContainUpperChar),
      ValidatorText(
          title: "Must Contain Lower Character",
          rule: context.read<FieldsValidatorCubit>().isContainLowerChar),
      ValidatorText(
          title: "Must Contain Number",
          rule: context.read<FieldsValidatorCubit>().isContainNum),
      ValidatorText(
          title: "Must Contain Special Character",
          rule: context.read<FieldsValidatorCubit>().isContainSpecailChar),
    ]);
  }
}
