import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/features/Auth/signup/presentation/pages/signup_screen.dart';

class RegisterTextBtn extends StatelessWidget {
  const RegisterTextBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          "Not a Member?",
          style: TextStyle(color: Color(0xff838286)),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignupScreen()));
          },
          child:
              const Text("Register Now", style: TextStyle(color: Colors.white)),
        )
      ],
    );
  }
}
