import 'package:flutter/material.dart';

class LogoBanar extends StatelessWidget {
  const LogoBanar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset("assets/images/login_screen/logo.png"),
        const SizedBox(height: 10),
        const Text(
          "Exploper the Galaxy",
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.end,
        ),
        const SizedBox(height: 60),
      ],
    );
  }
}
