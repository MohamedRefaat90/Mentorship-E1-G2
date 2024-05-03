import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_e1_g3/features/Auth/login/cubit/login_cubit.dart';

import '../../../../../core/widgets/custom_text_field.dart';

class LoginFields extends StatelessWidget {
  const LoginFields({super.key});

  @override
  Widget build(BuildContext context) {
    LoginCubit cubit = BlocProvider.of<LoginCubit>(context);
    return Column(
      children: [
        CustomTextField(
            textEditingController: cubit.emailController,
            passwordVisibiltyIcon: false,
            isobscure: false,
            placeholderText: "Email",
            icon: Icons.person_3_outlined),
        const SizedBox(height: 20),
        CustomTextField(
          textEditingController: cubit.passwordController,
          placeholderText: "Password",
          passwordVisibiltyIcon: true,
          isobscure: true,
          icon: Icons.password,
        ),
      ],
    );
  }
}
