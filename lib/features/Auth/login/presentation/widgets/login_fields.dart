import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class LoginFields extends StatelessWidget {
  const LoginFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
            textEditingController: TextEditingController(),
            isPassword: false,
            placeholderText: "Email",
            icon: Icons.person_3_outlined),
        const SizedBox(height: 20),
        CustomTextField(
          textEditingController: TextEditingController(),
          placeholderText: "Password",
          isPassword: true,
          icon: Icons.password,
        ),
      ],
    );
  }
}
