import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:spacexx/core/helpers/functions/snakbar.dart';
import 'package:spacexx/core/networking/auth_exception.dart';
import 'package:spacexx/core/services/sharedprefs.dart';

import '../../../../core/routing/app_routing.dart';
import '../../../home/presentation/screen/home_screen.dart';
import '../firebase/github_login.dart';
import '../firebase/google_login.dart';
import '../firebase/phone_login.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String otp = "";
  int resendOtpTimer = 60;
  bool isResendOtpDisabled = false;
  Timer? otpTimer;
  LoginCubit() : super(LoginInitial());

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

  loginByEmailandPass(BuildContext context) async {
    emit(LoginLoading());
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: emailController.text.trim(),
            password: passwordController.text);
        SharedPreferencesService.saveUserID(
            FirebaseAuth.instance.currentUser!.uid);
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

  loginByGithub(BuildContext context) {
    GithubLogin().login(context);
  }

  loginByGoogle(BuildContext context) {
    GoogleLogin().login(context);
  }

  loginByPhone(BuildContext context, String phoneNum) async {
    emit(LoginLoading());
    PhoneLogin phoneLogin = PhoneLogin();

    phoneLogin.setvrifiedPhone(phoneNum);
    await phoneLogin.login(context);
    Future.delayed(
      const Duration(seconds: 1),
      () => emit(LoginInitial()),
    );
  }

  logout() async {
    await FirebaseAuth.instance.signOut();
    SharedPreferencesService.deleteUserID();
    popAndPushNamed('/Login');
  }

  resetLoginFields() {
    emailController.clear();
    passwordController.clear();
    emit(LoginInitial());
  }

  resetResentOtp() {
    otpTimer!.cancel();
    otp = "";
    resendOtpTimer = 60;
    isResendOtpDisabled = false;
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
}
