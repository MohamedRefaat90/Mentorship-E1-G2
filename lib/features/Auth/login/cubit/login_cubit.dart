import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/features/Auth/login/cubit/login_methods.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  loginByGithub(BuildContext context) {
    GithubLogin().login(context);
  }

  loginByGoogle(BuildContext context) {
    GoogleLogin().login(context);
  }

  loginByPhone(BuildContext context, String phoneNum) {
    PhoneLogin().vrifiedPhone = phoneNum;
    PhoneLogin().login(context);
  }
}
