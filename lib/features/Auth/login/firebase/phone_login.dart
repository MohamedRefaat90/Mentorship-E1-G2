import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacexx/features/Auth/login/cubit/login_cubit.dart';

import '../../../../core/helpers/functions/snakbar.dart';
import '../../../../core/networking/auth_exception.dart';
import '../../../../core/routing/app_routing.dart';
import '../../../../core/services/sharedprefs.dart';
import '../../../home/presentation/screen/home_screen.dart';
import 'login_methods.dart';
import '../presentation/widgets/otp_bottomsheet.dart';

class PhoneLogin implements LoginMethods {
  static final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  static String? _vrifiedPhone;

  static int? _resendToken;

  @override
  login(BuildContext context) async {
    LoginCubit cubit = BlocProvider.of<LoginCubit>(context);

    await _firebaseAuth.verifyPhoneNumber(
      timeout: const Duration(minutes: 1),
      phoneNumber: _vrifiedPhone,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await _firebaseAuth.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException error) {
        autoVarificationFailure(context, error);
      },
      codeSent: (String verificationId, int? resendToken) {
        _resendToken = resendToken;
        cubit.startOtpTimer();
        Navigator.pop(context);
        showOTPBottomSheet(context, verificationId, resendToken);
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  void setvrifiedPhone(String phoneNum) => _vrifiedPhone = phoneNum;

  static otpVarificationFailure(
      BuildContext context, FirebaseAuthException error) {
    Navigator.pop(context);
    resetOTP(context);
    showSnackBar(context, AuthExceptionHandler.handleException(error));
  }

  static otpVarificationSuccess(BuildContext context) {
    Navigator.pop(context);
    resetOTP(context);

    Future.delayed(
      const Duration(seconds: 1),
      () => pushReplacement(const HomeScreen()),
    );
  }

  static resendOTP(BuildContext context) async {
    LoginCubit cubit = BlocProvider.of<LoginCubit>(context);
    await _firebaseAuth.verifyPhoneNumber(
      timeout: const Duration(minutes: 1),
      forceResendingToken: _resendToken,
      phoneNumber: _vrifiedPhone,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await _firebaseAuth.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException error) {
        autoVarificationFailure(context, error);
      },
      codeSent: (String verificationId, int? resendToken) {
        _resendToken = resendToken;
        cubit.startOtpTimer();
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  static submitOTPCode(BuildContext context, String verificationId,
      int? resendToken, String otpCode) async {
    try {
      context.read<LoginCubit>().emit(LoginLoading());
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: verificationId, smsCode: otpCode);
      await _firebaseAuth.signInWithCredential(credential);
      SharedPreferencesService.saveUserID(_firebaseAuth.currentUser!.uid);
      if (!context.mounted) return;
      context.read<LoginCubit>().emit(LoginFailure());
      otpVarificationSuccess(context);
    } on FirebaseAuthException catch (error) {
      if (!context.mounted) return;
      otpVarificationFailure(context, error);
    }
  }

  static resetOTP(BuildContext context) {
    BlocProvider.of<LoginCubit>(context).otp = "";
  }

  static autoVarificationFailure(
      BuildContext context, FirebaseAuthException error) {
    Navigator.pop(context);
    showSnackBar(context, AuthExceptionHandler.handleException(error));
  }
}
