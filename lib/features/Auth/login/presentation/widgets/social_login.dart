import 'package:flutter/material.dart';

import 'social_login_btn.dart';
import 'package:mentorship_e1_g3/core/resources/assets.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SocialLoginBtn(
          lable: "Google",
          svgIcon: Assets.loginGoogleIcon,
        ),
        SizedBox(width: 20),
        SocialLoginBtn(
          lable: "Phone",
          svgIcon: Assets.loginPhoneIcon,
        ),
      ],
    );
  }
}
