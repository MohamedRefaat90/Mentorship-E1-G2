import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mentorship_e1_g3/core/networking/auth_exception.dart';
import 'package:mentorship_e1_g3/core/routing/app_routing.dart';
import 'package:mentorship_e1_g3/core/widgets/custom_btn.dart';
import 'package:mentorship_e1_g3/features/Auth/login/presentation/widgets/otp_fields.dart';
import 'package:mentorship_e1_g3/features/home/presentation/screen/home_screen.dart';

import '../../../../core/helpers/functions/snakbar.dart';
import '../../../../core/themes/app_pallete.dart';
import '../presentation/widgets/otp_bottomsheet.dart';

class GithubLogin implements LoginBySocial {
  @override
  login(BuildContext context) async {
    try {
      final githubAuthProvider = GithubAuthProvider();
      return await FirebaseAuth.instance
          .signInWithProvider(githubAuthProvider)
          .then((user) {
        if (user.user != null) {
          pushReplacement(const HomeScreen());
        }
      });
    } on FirebaseAuthException catch (error) {
      showSnackBar(context, AuthExceptionHandler.handleException(error));
    } on NoSocialAccountSelected catch (_) {
      return;
    }
  }
}

class GoogleLogin implements LoginBySocial {
  @override
  login(BuildContext context) async {
    try {
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
          pushReplacement(const HomeScreen());
        }
      });
    } on FirebaseAuthException catch (error) {
      if (!context.mounted) return;
      showSnackBar(context, AuthExceptionHandler.handleException(error));
    } on NoSocialAccountSelected catch (_) {
      return;
    }
  }
}

class PhoneLogin implements LoginBySocial {
  String? vrifiedPhone;
  @override
  login(BuildContext context) async {
    debugPrint(vrifiedPhone);
    FirebaseAuth auth = FirebaseAuth.instance;
    await auth.verifyPhoneNumber(
      phoneNumber: vrifiedPhone,
      verificationCompleted: (PhoneAuthCredential credential) async {
        // await auth.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException error) {
        Navigator.pop(context);
        showSnackBar(context, AuthExceptionHandler.handleException(error));
      },
      codeSent: (String verificationId, int? resendToken) {
        Navigator.pop(context);
        showOTPBottomSheet(context);
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }
}

abstract interface class LoginBySocial {
  login(BuildContext context);
}
