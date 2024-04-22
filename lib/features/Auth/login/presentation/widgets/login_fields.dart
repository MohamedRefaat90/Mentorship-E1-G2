import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_field.dart';

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
            passwordVisibiltyIcon: false,
            isobscure: false,
            placeholderText: "Email",
            icon: Icons.person_3_outlined),
        const SizedBox(height: 20),
        CustomTextField(
          textEditingController: TextEditingController(),
          placeholderText: "Password",
          passwordVisibiltyIcon: true,
          isobscure: true,
          icon: Icons.password,
        ),
      ],
    );
  }
}
