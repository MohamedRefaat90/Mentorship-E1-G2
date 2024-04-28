import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
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
        const SizedBox(width: 10),
        Expanded(
          child: SocialLoginBtn(
            press: () {
              cubit.loginByGithub(context);
            },
            lable: "Github",
            svgIcon: Assets.loginGithubIcon,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: SocialLoginBtn(
            press: () {
              showDialog(
                context: context,
                barrierDismissible: true,
                builder: (context) => AlertDialog(
                  actionsAlignment: MainAxisAlignment.center,
                  contentPadding: const EdgeInsets.all(10),
                  backgroundColor: Colors.white,
                  title: const Text('Login by Phone'),
                  content: Row(
                    children: [
                      CountryCodePicker(
                        onChanged: (value) {
                          // codeCountry = value.dialCode!;
                        },
                        searchStyle: const TextStyle(color: Colors.black),
                        textStyle: const TextStyle(color: Colors.black),
                        dialogTextStyle: const TextStyle(color: Colors.black),
                        showCountryOnly: false,
                        showOnlyCountryWhenClosed: false,
                        alignLeft: false,
                      ),
                      Expanded(child: TextFormField())
                    ],
                  ),
                  actions: const [],
                ),
              );
            },
            lable: "Phone",
            svgIcon: Assets.loginPhoneIcon,
          ),
        ),
      ],
    );
  }
}
