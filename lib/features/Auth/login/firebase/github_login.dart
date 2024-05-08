import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/functions/snakbar.dart';
import '../../../../core/networking/auth_exception.dart';
import '../../../../core/routing/app_routing.dart';
import '../../../../core/services/sharedprefs.dart';
import '../../../home/presentation/screen/home_screen.dart';
import 'login_methods.dart';

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
}
