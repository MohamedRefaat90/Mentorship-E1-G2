import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';
import 'package:mentorship_e1_g3/core/widgets/custom_btn.dart';
import 'package:mentorship_e1_g3/features/Auth/login/presentation/widgets/otp_fields.dart';

Future<dynamic> showOTPBottomSheet(BuildContext context) {
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
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "OTP Varification",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Enter OTP That Sent Via sms",
                      style: TextStyle(),
                    ),
                    const SizedBox(height: 20),
                    const OtpFields(),
                    const SizedBox(height: 20),
                    Center(
                      child: CustomBTN(
                          widget: const Text("Submit"),
                          color: AppPallete.violet,
                          width: 200,
                          press: () {}),
                    )
                  ]),
            ),
          ));
}
