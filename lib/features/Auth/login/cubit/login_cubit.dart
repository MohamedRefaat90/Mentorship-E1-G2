import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/helpers/functions/snakbar.dart';
import 'package:mentorship_e1_g3/core/networking/auth_exception.dart';
import 'package:mentorship_e1_g3/features/Auth/login/cubit/login_methods.dart';
import 'package:mentorship_e1_g3/features/Auth/login/presentation/screen/login_screen.dart';

import '../../../../core/routing/app_routing.dart';
import '../../../home/presentation/screen/home_screen.dart';

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

  startOtpTimer() {
    otpTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (resendOtpTimer != 0) {
        resendOtpTimer--;
        isResendOtpDisabled = true;
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
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: emailController.text.trim(),
            password: passwordController.text);
        emit(LoginSuccess());
        Future.delayed(
          const Duration(seconds: 2),
          () {
            resetLoginFields();
            return pushReplacement(const HomeScreen());
          },
        );
      } on FirebaseAuthException catch (error) {
        emit(LoginFailure());
        if (!context.mounted) return;
        showSnackBar(context, AuthExceptionHandler.handleException(error));
      }
    } else {
      showSnackBar(context, "Fields Must Not be Empty");
      emit(LoginFailure());
    }
  }

  resetLoginFields() {
    emailController.clear();
    passwordController.clear();
    emit(LoginInitial());
  }

  forgetPassword(BuildContext context, String email) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      if (!context.mounted) return;
      Navigator.pop(context);
      showSnackBar(
          context, "Check Your Email For Reset Password", Colors.amber);
    } on FirebaseAuthException catch (error) {
      if (!context.mounted) return;
      Navigator.pop(context);
      showSnackBar(context, AuthExceptionHandler.handleException(error));
    }
  }

  logout() async {
    await FirebaseAuth.instance.signOut();
    pushReplacement(const LoginScreen());
  }
}
