import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/features/Auth/signup/cubits/fields_validator/fields_validator_cubit.dart';
import 'package:spacex/features/Auth/signup/cubits/signup/signup_cubit.dart';
import 'package:spacex/features/Auth/signup/presentation/screen/signup_screen.dart';

class RegisterTextBtn extends StatelessWidget {
  const RegisterTextBtn({super.key});

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
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MultiBlocProvider(
                          providers: [
                            BlocProvider(create: (context) => SignupCubit()),
                            BlocProvider(
                                create: (context) => FieldsValidatorCubit()),
                          ],
                          child: const SignupScreen(),
                        )));
          },
          child:
              const Text("Register Now", style: TextStyle(color: Colors.white)),
        )
      ],
    );
  }
}
