import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacexx/core/resources/assets.dart';
import 'package:spacexx/features/Auth/login/cubit/login_cubit.dart';

import 'show_loginPhone_dialog.dart';
import 'social_login_btn.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SocialLoginBtn(
            press: () => context.read<LoginCubit>().loginByGoogle(context),
            lable: "Google",
            svgIcon: Assets.loginGoogleIcon,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: SocialLoginBtn(
            press: () => context.read<LoginCubit>().loginByGithub(context),
            lable: "Github",
            svgIcon: Assets.loginGithubIcon,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: SocialLoginBtn(
            press: () {
              showLoginPhoneDialog(context);
            },
            lable: "Phone",
            svgIcon: Assets.loginPhoneIcon,
          ),
        ),
      ],
    );
  }
}
