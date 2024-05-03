import 'package:flutter/material.dart';
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
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.end,
        ),
        const SizedBox(height: 60),
      ],
    );
  }
}
