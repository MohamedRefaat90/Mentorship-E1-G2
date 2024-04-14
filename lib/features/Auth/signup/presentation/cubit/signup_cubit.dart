import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool isVaildEmail = false;
  bool isPassLengthLargerThan8 = false;
  bool isContainUpperChar = false;
  bool isContainLowerChar = false;
  bool isContainNum = false;
  bool isContainSpecailChar = false;
  bool isPassMatchConfirmPass = false;
  bool isObsecured = false;

  SignupCubit() : super(SignupInitial());

  validatePasswordField(String password) {
    checkLengthOfPassword(password);
    checkPasswordContainUpperChar(password);
    checkPasswordContainLowerChar(password);
    checkPasswordContainSpecialChar(password);
    checkPasswordContainNum(password);
    emit(SignupValidFields());
  }

  checkLengthOfPassword(String password) {
    if (password.length >= 8) {
      isPassLengthLargerThan8 = true;
    } else {
      isPassLengthLargerThan8 = false;
    }
  }

  checkPasswordContainLowerChar(String password) {
    if (password.contains(RegExp(r"[a-z]"))) {
      isContainLowerChar = true;
    } else {
      isContainLowerChar = false;
    }
  }

  checkPasswordContainSpecialChar(String password) {
    if (password.contains(RegExp(r"(?=.*?[!@#\$&*~])"))) {
      isContainSpecailChar = true;
    } else {
      isContainSpecailChar = false;
    }
  }

  checkPasswordContainUpperChar(String password) {
    if (password.contains(RegExp(r"[A-Z]"))) {
      isContainUpperChar = true;
    } else {
      isContainUpperChar = false;
    }
  }

  checkPasswordContainNum(String password) {
    if (password.contains(RegExp(r"[0-9]"))) {
      isContainNum = true;
    } else {
      isContainNum = false;
    }
  }

  validateConfirmPassword(String confirmPassword) {
    if (confirmPassword == passwordController.text) {
      isPassMatchConfirmPass = true;
    } else {
      isPassMatchConfirmPass = false;
    }
    emit(SignupValidFields());
  }

  validateEmail(String email) {
    if (RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email)) {
      isVaildEmail = true;
    } else {
      isVaildEmail = false;
    }
    emit(SignupValidFields());
  }

  bool validatePassword() {
    if (isPassLengthLargerThan8 &&
        isContainUpperChar &&
        isContainLowerChar &&
        isContainNum &&
        isContainSpecailChar) {
      return true;
    } else {
      return false;
    }
  }

  signupUser() {
    emit(SignupLoading());

    if (validateAllFields()) {
      emit(SignupSuccess());
    } else {
      emit(SignupFailure(errorMSG: "Enter Valid Data"));
    }
  }

  bool validateAllFields() {
    if (isPassMatchConfirmPass && isVaildEmail && validatePassword()) {
      return true;
    } else {
      return false;
    }
  }
}
