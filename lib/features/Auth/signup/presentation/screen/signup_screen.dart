import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/core/extension/num_extension.dart';
import 'package:spacex/core/resources/assets.dart';
import 'package:spacex/core/widgets/custom_text_field.dart';
import 'package:spacex/features/Auth/signup/cubits/fields_validator/fields_validator_cubit.dart';
import 'package:spacex/features/Auth/signup/presentation/widgets/validator_text.dart';

import '../../../../../core/widgets/background_image.dart';
import '../../../../../core/widgets/background_ovarlay.dart';
import '../widgets/password_validation_rules.dart';
import '../widgets/signup_appbar.dart';
import '../widgets/signup_btn.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundImage(image: Assets.signupBackground),
          const BackgroundOvarlay(opacity: 0.4),
          SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 30),
              child: BlocBuilder<FieldsValidatorCubit, FieldsValidatorState>(
                builder: (context, state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SignupAppbar(),
                      SizedBox(height: 60.height),
                      CustomTextField(
                          textEditingController: emailController,
                          placeholderText: "Email",
                          icon: Icons.email,
                          passwordVisibiltyIcon: false,
                          isobscure: false,
                          onChange: (email) => context
                              .read<FieldsValidatorCubit>()
                              .validateEmail(email)),
                      ValidatorText(
                          displayWhen: emailController.text.isNotEmpty,
                          title:
                              context.read<FieldsValidatorCubit>().isVaildEmail
                                  ? "Vaild Email"
                                  : "Invaild Email",
                          rule: context
                              .read<FieldsValidatorCubit>()
                              .isVaildEmail),
                      SizedBox(height: 20.height),
                      CustomTextField(
                          textEditingController: passwordController,
                          placeholderText: "Password",
                          icon: Icons.lock,
                          passwordVisibiltyIcon: true,
                          isobscure:
                              context.read<FieldsValidatorCubit>().isObsecured,
                          onChange: (password) => context
                              .read<FieldsValidatorCubit>()
                              .validatePasswordField(password)),
                      PasswordValidationRules(),
                      SizedBox(height: 20.height),
                      CustomTextField(
                        placeholderText: "Confirm Password",
                        textEditingController: confirmPasswordController,
                        icon: Icons.lock,
                        passwordVisibiltyIcon: true,
                        isobscure:
                            context.read<FieldsValidatorCubit>().isObsecured,
                        onChange: (confirmPassword) => context
                            .read<FieldsValidatorCubit>()
                            .validateConfirmPassword(
                                confirmPassword, passwordController.text),
                      ),
                      ValidatorText(
                          displayWhen:
                              confirmPasswordController.text.isNotEmpty,
                          title: context
                                  .read<FieldsValidatorCubit>()
                                  .isPassMatchConfirmPass
                              ? "Password Match"
                              : "Password Not Match",
                          rule: context
                              .read<FieldsValidatorCubit>()
                              .isPassMatchConfirmPass),
                      SizedBox(height: 50.height),
                      SignupBtn(
                          email: emailController.text.trim(),
                          password: confirmPasswordController.text)
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
