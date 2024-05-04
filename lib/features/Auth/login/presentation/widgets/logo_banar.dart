import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/extension/num_extension.dart';
import 'package:mentorship_e1_g3/core/resources/assets.dart';

class LogoBanar extends StatelessWidget {
  const LogoBanar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(Assets.loginLogo),
        const SizedBox(height: 10),
        const Text(
          "Explore the Galaxy",
          textAlign: TextAlign.end,
        ),
        SizedBox(height: 20.height),
      ],
    );
  }
}
