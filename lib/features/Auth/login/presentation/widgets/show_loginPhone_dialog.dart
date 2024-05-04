import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_e1_g3/core/extension/num_extension.dart';

import '../../../../../core/themes/app_pallete.dart';
import '../../../../../core/widgets/btn_loader.dart';
import '../../../../../core/widgets/custom_btn.dart';
import '../../cubit/login_cubit.dart';

Future<dynamic> showLoginPhoneDialog(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) {
      TextEditingController phoneController = TextEditingController();
      String codeCountry = "+20";
      return AlertDialog(
        actionsAlignment: MainAxisAlignment.center,
        contentPadding: const EdgeInsets.all(10),
        backgroundColor: Colors.white,
        title:
            const Text('Login by Phone', style: TextStyle(color: Colors.black)),
        content: Row(
          children: [
            CountryCodePicker(
              onChanged: (value) {
                codeCountry = value.dialCode!;
              },
              initialSelection: "eg",
              searchStyle: const TextStyle(color: Colors.black),
              textStyle: const TextStyle(color: Colors.black),
              dialogTextStyle: const TextStyle(color: Colors.black),
              showCountryOnly: false,
              showOnlyCountryWhenClosed: false,
              alignLeft: false,
            ),
            Expanded(
                child: TextFormField(
              controller: phoneController,
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10)),
              style: const TextStyle(color: Colors.black),
            ))
          ],
        ),
        actions: [
          BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              return CustomBTN(
                  widget: state is LoginLoading
                      ? const BtnLoader()
                      : const Text("Submit"),
                  padding: 15,
                  width: 200.width,
                  color: AppPalette.violet,
                  press: () {
                    String varifiedPhone =
                        codeCountry + phoneController.text.trim();
                    context
                        .read<LoginCubit>()
                        .loginByPhone(context, varifiedPhone);
                  });
            },
          ),
        ],
      );
    },
  );
}
