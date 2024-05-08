import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'fields_validator_state.dart';

class FieldsValidatorCubit extends Cubit<FieldsValidatorState> {
  FieldsValidatorCubit() : super(FieldsValidatorInitial());
  bool isVaildEmail = false;
  bool isPassLengthLargerThan8 = false;
  bool isContainUpperChar = false;
  bool isContainLowerChar = false;
  bool isContainNum = false;
  bool isContainSpecailChar = false;
  bool isPassMatchConfirmPass = false;
  bool isObsecured = true;

  validatePasswordField(String password) {
    checkLengthOfPassword(password);
    checkPasswordContainUpperChar(password);
    checkPasswordContainLowerChar(password);
    checkPasswordContainSpecialChar(password);
    checkPasswordContainNum(password);
    emit(ValidateFields());
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

  validateConfirmPassword(String confirmPassword, String password) {
    if (confirmPassword == password) {
      isPassMatchConfirmPass = true;
    } else {
      isPassMatchConfirmPass = false;
    }
    emit(ValidateFields());
  }

  validateEmail(String email) {
    if (RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email)) {
      isVaildEmail = true;
    } else {
      isVaildEmail = false;
    }
    emit(ValidateFields());
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

  bool validateAllFields() {
    if (isPassMatchConfirmPass && isVaildEmail && validatePassword()) {
      return true;
    } else {
      return false;
    }
  }
}
