import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_cubit.freezed.dart';
part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  bool isPassLargerThan8 = false;
  bool isContainUpperChar = false;
  bool isContainLowerChar = false;
  bool isContainSpecailChar = false;

  SignupCubit() : super(const SignupState.initial());

  checkLengthOfPassword(String password) {
    if (password.length >= 8) {
      isPassLargerThan8 = true;
    } else {
      isPassLargerThan8 = false;
    }
  }

  checkPasswordContainUpperChar(String password) {
    if (password.contains(RegExp(r"[A-Z]"))) {
      isContainUpperChar = true;
    } else {
      isContainUpperChar = false;
    }
  }

  checkPasswordContainLowerChar(String password) {
    if (password.contains(RegExp(r"[a-z]"))) {
      isContainLowerChar = true;
    } else {
      isContainLowerChar = false;
    }
  }

  checkPasswordContainSpacialChar(String password) {
    if (password.contains(RegExp(r"[a-z]"))) {
      isContainLowerChar = true;
    } else {
      isContainLowerChar = false;
    }
  }
}
