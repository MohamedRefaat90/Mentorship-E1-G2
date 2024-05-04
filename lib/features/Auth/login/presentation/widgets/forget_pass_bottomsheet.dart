import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/core/extension/num_extension.dart';
import 'package:spacex/core/widgets/custom_btn.dart';

import '../../../../../core/themes/app_pallete.dart';
import '../../cubit/login_cubit.dart';

Future<dynamic> showForgetPasswordBottomSheet(BuildContext context) {
  TextEditingController emailController = TextEditingController();
  return showModalBottomSheet(
      context: context,
      builder: (context) => DefaultTextStyle(
            style: const TextStyle(color: Colors.black),
            child: Container(
              width: double.infinity,
              height: 400,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Forget Password process",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  const Text("Enter your Email to reset password"),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: emailController,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5)),
                  ),
                  SizedBox(height: 30.height),
                  Center(
                    child: CustomBTN(
                        widget: const Text("Reset"),
                        width: 200.width,
                        color: AppPalette.rose,
                        press: () {
                          context.read<LoginCubit>().forgetPassword(
                              context, emailController.text.trim());
                        }),
                  )
                ],
              ),
            ),
          ));
}
