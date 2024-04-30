import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mentorship_e1_g3/core/helpers/functions/snakbar.dart';
import 'package:mentorship_e1_g3/features/Auth/login/cubit/login_methods.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String otp = "";
  int resendOtpTimer = 60;
  bool isResendOtpDisabled = false;
  Timer? otpTimer;
  loginByGithub(BuildContext context) {
    GithubLogin().login(context);
  }

  loginByGoogle(BuildContext context) {
    GoogleLogin().login(context);
  }

  loginByPhone(BuildContext context, String phoneNum) async {
    PhoneLogin phoneLogin = PhoneLogin();
    phoneLogin.setvrifiedPhone(phoneNum);

    await phoneLogin.login(context);
  }

  countDownOtpTimer() {
    otpTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (resendOtpTimer != 0) {
        resendOtpTimer--;
        isResendOtpDisabled = true;
        debugPrint(resendOtpTimer.toString());
      } else {
        resetResentOtp();
      }
      emit(LoginPhoneOtpTimer());
    });
  }

  resetResentOtp() {
    otpTimer!.cancel();
    otp = "";
    resendOtpTimer = 60;
    isResendOtpDisabled = false;
  }

  loginByEmailandPass(BuildContext context) async {
    emit(LoginLoading());
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      await EmailandPasswordLogin(
              emailAddress: emailController.text.trim(),
              password: passwordController.text)
          .login(context);
    } else {
      showSnackBar(context, "Fields Must Not be Empty");
    }
    emit(LoginSuccess());
  }
}
