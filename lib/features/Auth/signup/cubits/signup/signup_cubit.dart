import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/features/Auth/signup/cubits/fields_validator/fields_validator_cubit.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());

  signupUser(FieldsValidatorCubit FieldsValidatorCubit) {
    emit(SignupLoading());

    if (FieldsValidatorCubit.validateAllFields()) {
      emit(SignupSuccess());
    } else {
      emit(SignupFailure(errorMSG: "Enter Valid Data"));
    }
  }
}
