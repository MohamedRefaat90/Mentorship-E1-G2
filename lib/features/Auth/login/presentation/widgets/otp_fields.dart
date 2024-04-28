import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_e1_g3/features/Auth/login/cubit/login_cubit.dart';

class OtpFields extends StatefulWidget {
  const OtpFields({super.key});
  @override
  State<OtpFields> createState() => _OtpFieldsState();
}

class _OtpFieldsState extends State<OtpFields> {
  List<TextEditingController> otpController =
      List.generate(6, (index) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    return _generateTextFormField();
  }

  void _focusNextField(int index) {
    if (index < 6) {
      FocusScope.of(context).nextFocus();
    }
  }

  void _focusPreviousField(int index) {
    if (index > 0) {
      FocusScope.of(context).previousFocus();
    }
  }

  Widget _generateTextFormField() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        otpController.length,
        (index) {
          return _textFormField(index);
        },
      ),
    );
  }

  String otp = "";
  Widget _textFormField(int index) {
    return Center(
      child: SizedBox(
        height: 70,
        width: 50,
        child: TextFormField(
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          controller: otpController[index],
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(1),
          ],
          style: const TextStyle(color: Colors.black),
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.black,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.blueAccent,
              ),
            ),
          ),
          onChanged: (value) {
            if (value.isEmpty) {
              _focusPreviousField(index);
              context.read<LoginCubit>().otp =
                  context.read<LoginCubit>().otp.substring(0, otp.length - 1);
            } else {
              _focusNextField(index + 1);
              context.read<LoginCubit>().otp += value;
            }
            debugPrint(context.read<LoginCubit>().otp);
          },
        ),
      ),
    );
  }
}
