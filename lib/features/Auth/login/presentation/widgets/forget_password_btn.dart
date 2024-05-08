import 'package:flutter/material.dart';
import 'package:spacexx/core/extension/num_extension.dart';
import 'package:spacexx/features/Auth/login/presentation/widgets/forget_pass_bottomsheet.dart';

class ForgetPasswordBTN extends StatelessWidget {
  const ForgetPasswordBTN({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.only(bottom: 20.height),
          child: TextButton(
              onPressed: () {
                showForgetPasswordBottomSheet(context);
              },
              child: const Text("Forget Password?",
                  style: TextStyle(color: Colors.white))),
        ));
  }
}
