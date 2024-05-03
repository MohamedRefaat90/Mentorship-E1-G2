import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_e1_g3/features/Auth/login/cubit/login_cubit.dart';
import 'package:mentorship_e1_g3/features/Auth/login/presentation/widgets/forget_pass_bottomsheet.dart';

class ForgetPasswordBTN extends StatelessWidget {
  const ForgetPasswordBTN({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: TextButton(
              onPressed: () {
                showForgetPasswordBottomSheet(context);
              },
              child: const Text("Forget Password?",
                  style: TextStyle(color: Colors.white))),
        ));
  }
}
