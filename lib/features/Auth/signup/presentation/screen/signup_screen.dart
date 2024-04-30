import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_e1_g3/core/extension/num_extension.dart';
import 'package:mentorship_e1_g3/core/themes/styles.dart';
import 'package:mentorship_e1_g3/core/widgets/custom_text_field.dart';
import 'package:mentorship_e1_g3/features/Auth/signup/cubit/signup_cubit.dart';
import 'package:mentorship_e1_g3/features/Auth/signup/presentation/widgets/signup_button.dart';
import 'package:mentorship_e1_g3/features/Auth/signup/presentation/widgets/validator_text.dart';

import '../widgets/password_validation_rules.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SignupCubit cubit = BlocProvider.of<SignupCubit>(context);

    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text("Sign in", style: AppStyles.font24BoldWhite(context))),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 30),
            child: BlocBuilder<SignupCubit, SignupState>(
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextField(
                        textEditingController: cubit.emailController,
                        placeholderText: "Email",
                        icon: Icons.email,
                        passwordVisibiltyIcon: false,
                        isobscure: false,
                        onChange: (email) => cubit.validateEmail(email)),

                    ValidatorText(
                        displayWhen: cubit.emailController.text.isNotEmpty,
                        title: cubit.isVaildEmail
                            ? "Vaild Email"
                            : "Invaild Email",
                        rule: cubit.isVaildEmail),

                    SizedBox(height: 20.h),
                    CustomTextField(
                        textEditingController: cubit.passwordController,
                        placeholderText: "Password",
                        icon: Icons.lock,
                        passwordVisibiltyIcon: true,
                        isobscure: cubit.isObsecured,
                        onChange: (password) =>
                            cubit.validatePasswordField(password)),
                    // SizedBox(height: 10.h),
                    const PasswordValidationRules(),
                    SizedBox(height: 20.h),
                    CustomTextField(
                      placeholderText: "Confirm Password",
                      textEditingController: cubit.confirmPasswordController,
                      icon: Icons.lock,
                      passwordVisibiltyIcon: true,
                      isobscure: cubit.isObsecured,
                      onChange: (confirmPassword) =>
                          cubit.validateConfirmPassword(confirmPassword),
                    ),

                    BlocBuilder<SignupCubit, SignupState>(
                      builder: (context, state) {
                        return ValidatorText(
                            displayWhen:
                                cubit.confirmPasswordController.text.isNotEmpty,
                            title: cubit.isPassMatchConfirmPass
                                ? "Password Match"
                                : "Password Not Match",
                            rule: cubit.isPassMatchConfirmPass);
                      },
                    ),
                    SizedBox(height: 20.h),
                    const SignupButton()
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
