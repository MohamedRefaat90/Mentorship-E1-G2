import 'package:flutter/material.dart';

class ForgetPasswordBTN extends StatelessWidget {
  const ForgetPasswordBTN({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: TextButton(
              onPressed: () {},
              child: const Text("Forget Password?",
                  style: TextStyle(color: Colors.white))),
        ));
  }
}
