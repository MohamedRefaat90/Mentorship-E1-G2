import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mentorship_e1_g3/core/networking/auth_exception.dart';
import 'package:mentorship_e1_g3/core/routing/app_routing.dart';
import 'package:mentorship_e1_g3/features/Auth/login/cubit/login_exception.dart';
import 'package:mentorship_e1_g3/features/home/presentation/screen/home_screen.dart';

import '../../../../core/helpers/functions/snakbar.dart';

class GithubLogin implements LoginBySocial {
  @override
  login(BuildContext context) async {
    try {
      final githubAuthProvider = GithubAuthProvider();
      return await FirebaseAuth.instance.signInWithProvider(githubAuthProvider);
    } on FirebaseAuthException catch (error) {
      showSnackBar(
          context, AuthExceptionHandler.handleException(error).toUpperCase());
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
          .then((user) => push(const HomeScreen()));
    } on FirebaseAuthException catch (error) {
      showSnackBar(
          context, AuthExceptionHandler.handleException(error).toUpperCase());
    }
  }
}

abstract interface class LoginBySocial {
  login(BuildContext context);
}
