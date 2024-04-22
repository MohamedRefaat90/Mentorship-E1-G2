import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mentorship_e1_g3/core/resources/assets.dart';

import 'social_login_btn.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: SocialLoginBtn(
            lable: "Google",
            svgIcon: Assets.loginGoogleIcon,
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          child: SocialLoginBtn(
            lable: "Phone",
            svgIcon: Assets.loginPhoneIcon,
          ),
        ),
      ],
    );
  }
}
