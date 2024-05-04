import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../core/helpers/functions/snakbar.dart';
import '../../../../core/networking/auth_exception.dart';
import '../../../../core/routing/app_routing.dart';
import '../../../../core/services/sharedprefs.dart';
import '../../../home/presentation/screen/home_screen.dart';
import 'login_methods.dart';

class GoogleLogin implements LoginMethods {
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
          SharedPreferencesService.saveUserID(user.user!.uid);
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
