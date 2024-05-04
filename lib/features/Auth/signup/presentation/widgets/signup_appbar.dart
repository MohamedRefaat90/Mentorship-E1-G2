import 'package:flutter/material.dart';

class SignupAppbar extends StatelessWidget {
  const SignupAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        BackButton(color: Colors.white),
        Expanded(
            child: Center(
                child: Text(
          "Signup",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        )))
      ],
    );
  }
}
