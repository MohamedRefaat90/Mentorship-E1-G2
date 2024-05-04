import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/core/themes/app_pallete.dart';
import 'package:spacex/core/widgets/btn_loader.dart';
import 'package:spacex/core/widgets/custom_btn.dart';
import 'package:spacex/features/Auth/login/presentation/widgets/otp_fields.dart';

import '../../cubit/login_cubit.dart';
import '../../cubit/login_methods.dart';

Future<dynamic> showOTPBottomSheet(
    BuildContext context, String verificationId, int? resendToken) {
  return showModalBottomSheet(
      context: context,
      isDismissible: false,
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
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "OTP Varification",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () {
                            context.read<LoginCubit>().resetResentOtp();
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.close),
                          color: AppPalette.errorColor,
                          iconSize: 30,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text("Enter OTP That Sent Via sms"),
                    const SizedBox(height: 20),
                    const OtpFields(),
                    const SizedBox(height: 20),
                    Center(
                      child: BlocBuilder<LoginCubit, LoginState>(
                        builder: (context, state) {
                          return CustomBTN(
                              widget: Text(
                                  "Resent OTP ${context.read<LoginCubit>().resendOtpTimer}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold)),
                              color: Colors.blueAccent,
                              padding: 10,
                              width: 70,
                              isDisabled: context
                                  .read<LoginCubit>()
                                  .isResendOtpDisabled,
                              press: () => PhoneLogin.resendOTP(context));
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: BlocBuilder<LoginCubit, LoginState>(
                        builder: (context, state) {
                          return CustomBTN(
                              widget: state is LoginLoading
                                  ? const BtnLoader()
                                  : const Text("Submit"),
                              color: AppPalette.rose,
                              isDisabled:
                                  context.read<LoginCubit>().otp.length != 6
                                      ? true
                                      : false,
                              width: 200,
                              press: () async {
                                await PhoneLogin.submitOTPCode(
                                    context,
                                    verificationId,
                                    resendToken,
                                    context.read<LoginCubit>().otp);
                                if (!context.mounted) return;
                                context.read<LoginCubit>().resetResentOtp();
                              });
                        },
                      ),
                    )
                  ]),
            ),
          ));
}
