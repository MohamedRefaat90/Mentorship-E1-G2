import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/features/Auth/login/cubit/login_exception.dart';
import 'package:mentorship_e1_g3/features/Auth/login/cubit/login_methods.dart';

import '../../../../core/helpers/functions/snakbar.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginBySocial? loginBySocial;

  LoginCubit() : super(LoginInitial());

  loginByGoogle(BuildContext context) {
    try {
      GoogleLogin().login();
    } on NoSocialAccountSelected catch (_) {
      return;
    } on FirebaseAuthException catch (_) {
      if (!context.mounted) return;
      showSnackBar(context, "Try Again");
    }
  }
}
