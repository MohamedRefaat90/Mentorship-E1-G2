import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_e1_g3/core/extension/num_extension.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';
import 'package:mentorship_e1_g3/core/themes/styles.dart';
import 'package:mentorship_e1_g3/core/widgets/custom_btn.dart';
import 'package:mentorship_e1_g3/features/Auth/login/presentation/widgets/custom_text_field.dart';
import 'package:mentorship_e1_g3/features/Auth/signup/presentation/cubit/signup_cubit.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text("Sign in", style: AppStyles.font24BoldWhite(context))),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 30),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextField(
                      textEditingController: TextEditingController(),
                      placeholderText: "Email",
                      icon: Icons.email,
                      isPassword: false),
                  SizedBox(height: 20.h),
                  CustomTextField(
                      textEditingController: TextEditingController(),
                      placeholderText: "Password",
                      icon: Icons.lock,
                      isPassword: true,
                      onChange: (value) => BlocProvider.of<SignupCubit>(context)
                          .validatePasswordField(value)),
                  SizedBox(height: 10.h),
                  BlocBuilder<SignupCubit, SignupState>(
                    builder: (context, state) {
                      return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "* Must must larger then 8",
                              style: TextStyle(
                                  color: context
                                          .watch<SignupCubit>()
                                          .isPassLargerThan8
                                      ? Colors.green
                                      : AppPallete.errorColor),
                            ),
                            Text(
                              "* Must Contain Upper Character",
                              style: TextStyle(
                                  color: context
                                          .watch<SignupCubit>()
                                          .isContainUpperChar
                                      ? Colors.green
                                      : AppPallete.errorColor),
                            ),
                            Text(
                              "* Must Contain Lower Character",
                              style: TextStyle(
                                  color: context
                                          .watch<SignupCubit>()
                                          .isContainLowerChar
                                      ? Colors.green
                                      : AppPallete.errorColor),
                            ),
                            Text(
                              "* Must Contain Number",
                              style: TextStyle(
                                  color:
                                      context.watch<SignupCubit>().isContainNum
                                          ? Colors.green
                                          : AppPallete.errorColor),
                            ),
                            Text(
                              "* Must Contain Special Character",
                              style: TextStyle(
                                  color: context
                                          .watch<SignupCubit>()
                                          .isContainSpecailChar
                                      ? Colors.green
                                      : AppPallete.errorColor),
                            ),
                          ]);
                    },
                  ),
                  SizedBox(height: 10.h),
                  CustomTextField(
                      textEditingController: TextEditingController(),
                      placeholderText: "Confirm Password",
                      icon: Icons.lock,
                      isPassword: true),
                  SizedBox(height: 20.h),
                  CustomBTN(
                      widget: const Text("Submit"),
                      width: double.infinity,
                      press: () {})
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
