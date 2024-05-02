import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/password_validation_rules.dart';
import '../../../../../core/widgets/btn_loader.dart';
import '../../../../../core/widgets/custom_btn.dart';
import 'package:mentorship_e1_g3/core/themes/styles.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';
import 'package:mentorship_e1_g3/core/routing/app_routing.dart';
import 'package:mentorship_e1_g3/core/extension/num_extension.dart';
import 'package:mentorship_e1_g3/core/themes/styles.dart';
import 'package:mentorship_e1_g3/core/helpers/functions/snakbar.dart';
import 'package:mentorship_e1_g3/core/widgets/custom_text_field.dart';
import 'package:mentorship_e1_g3/features/Auth/signup/cubits/fields_validator/fields_validator_cubit.dart';
import 'package:mentorship_e1_g3/features/Auth/login/presentation/screen/login_screen.dart';
import 'package:mentorship_e1_g3/features/Auth/signup/presentation/widgets/validator_text.dart';

import '../widgets/password_validation_rules.dart';
import '../widgets/submit_btn.dart';

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
  Widget build(BuildContext context) {
    FieldsValidatorCubit fieldValidatorCubit =
        BlocProvider.of<FieldsValidatorCubit>(context);

    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text("Sign in", style: AppStyles.font24BoldWhite(context))),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 30),
            child: BlocBuilder<FieldsValidatorCubit, FieldsValidatorState>(
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextField(
                        textEditingController: emailController,
                        placeholderText: "Email",
                        icon: Icons.email,
                        passwordVisibiltyIcon: false,
                        isobscure: false,
                        onChange: (email) =>
                            fieldValidatorCubit.validateEmail(email)),
                    ValidatorText(
                        displayWhen: emailController.text.isNotEmpty,
                        title: fieldValidatorCubit.isVaildEmail
                            ? "Vaild Email"
                            : "Invaild Email",
                        rule: fieldValidatorCubit.isVaildEmail),
                    SizedBox(height: 20.height),
                    CustomTextField(
                        textEditingController: passwordController,
                        placeholderText: "Password",
                        icon: Icons.lock,
                        passwordVisibiltyIcon: true,
                        isobscure: fieldValidatorCubit.isObsecured,
                        onChange: (password) => fieldValidatorCubit
                            .validatePasswordField(password)),
                    PasswordValidationRules(),
                    SizedBox(height: 20.height),
                    CustomTextField(
                      placeholderText: "Confirm Password",
                      textEditingController: confirmPasswordController,
                      icon: Icons.lock,
                      passwordVisibiltyIcon: true,
                      isobscure: fieldValidatorCubit.isObsecured,
                      onChange: (confirmPassword) =>
                          fieldValidatorCubit.validateConfirmPassword(
                              confirmPassword, passwordController.text),
                    ),
                    ValidatorText(
                        displayWhen: confirmPasswordController.text.isNotEmpty,
                        title: fieldValidatorCubit.isPassMatchConfirmPass
                            ? "Password Match"
                            : "Password Not Match",
                        rule: fieldValidatorCubit.isPassMatchConfirmPass),
                    SizedBox(height: 50.height),
                    const SubmitBtn()
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
