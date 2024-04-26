import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_e1_g3/core/resources/assets.dart';
import 'package:mentorship_e1_g3/features/Auth/login/cubit/login_cubit.dart';

import 'social_login_btn.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    LoginCubit cubit = BlocProvider.of<LoginCubit>(context);
    return Row(
      children: [
        Expanded(
          child: SocialLoginBtn(
            press: () {
              cubit.loginByGoogle(context);
            },
            lable: "Google",
            svgIcon: Assets.loginGoogleIcon,
          ),
        ),
        const SizedBox(width: 20),
        const Expanded(
          child: SocialLoginBtn(
            lable: "Phone",
            svgIcon: Assets.loginPhoneIcon,
          ),
        ),
      ],
    );
  }
}
