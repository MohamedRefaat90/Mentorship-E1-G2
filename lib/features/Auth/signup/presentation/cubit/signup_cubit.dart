import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  bool isPassLargerThan8 = false;
  bool isContainUpperChar = false;
  bool isContainLowerChar = false;
  bool isContainNum = false;
  bool isContainSpecailChar = false;

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
      isPassLargerThan8 = true;
    } else {
      isPassLargerThan8 = false;
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
}
