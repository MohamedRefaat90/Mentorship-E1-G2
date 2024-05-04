// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mentorship_e1_g3/core/networking/auth_exception.dart';
import 'package:mentorship_e1_g3/core/routing/app_routing.dart';
import 'package:mentorship_e1_g3/features/Auth/login/cubit/login_cubit.dart';
import 'package:mentorship_e1_g3/features/home/presentation/screen/home_screen.dart';

import '../../../../core/helpers/functions/snakbar.dart';
import '../../../../core/services/sharedprefs.dart';
import '../presentation/widgets/otp_bottomsheet.dart';

abstract interface class LoginMethods {
  login(BuildContext context);
}

class GoogleLogin implements LoginMethods {
  @override
  login(BuildContext context) {
    try {
      createGoogleCredential();
    } on FirebaseAuthException catch (error) {
      if (!context.mounted) return;
      showSnackBar(context, AuthExceptionHandler.handleException(error));
    } on NoSocialAccountSelected catch (_) {
      return;
    }
  }

  createGoogleCredential() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    if (googleUser == null) throw NoSocialAccountSelected();

    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return await FirebaseAuth.instance
        .signInWithCredential(credential)
        .then((user) {
      if (user.user != null) {
        SharedPreferencesService.saveUserID(user.user!.uid);
        pushReplacement(const HomeScreen());
      }
    });
  }
}

class GithubLogin implements LoginMethods {
  @override
  login(BuildContext context) async {
    try {
      final githubAuthProvider = GithubAuthProvider();
      return await FirebaseAuth.instance
          .signInWithProvider(githubAuthProvider)
          .then((user) {
        if (user.user != null) {
          SharedPreferencesService.saveUserID(user.user!.uid);
          pushReplacement(const HomeScreen());
        }
      });
    } on FirebaseAuthException catch (error) {
      showSnackBar(context, AuthExceptionHandler.handleException(error));
    } on NoSocialAccountSelected catch (_) {
      return;
    }
  }

  createGithubCredential() async {}
}

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
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: verificationId, smsCode: otpCode);
      await _firebaseAuth.signInWithCredential(credential);
      SharedPreferencesService.saveUserID(_firebaseAuth.currentUser!.uid);
      if (!context.mounted) return;
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

class EmailandPasswordLogin implements LoginMethods {
  String emailAddress;
  String password;
  EmailandPasswordLogin({required this.emailAddress, required this.password});

  @override
  login(BuildContext context) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailAddress, password: password);

      Future.delayed(
        const Duration(seconds: 2),
        () => pushReplacement(const HomeScreen()),
      );
    } on FirebaseAuthException catch (error) {
      if (!context.mounted) return;
      showSnackBar(context, AuthExceptionHandler.handleException(error));
    }
  }
}
