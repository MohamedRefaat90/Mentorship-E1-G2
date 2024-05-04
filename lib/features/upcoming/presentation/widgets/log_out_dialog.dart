import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:spacex/core/resources/assets.dart';
import 'package:spacex/core/themes/app_pallete.dart';
import 'package:spacex/features/upcoming/presentation/widgets/log_out_dialog_button.dart';

void showLogOutDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppPalette.transparentColor,
          contentPadding: EdgeInsets.zero,
          content: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage(
                        Assets.backgroundImage,
                      ),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                      height: 230,
                      child: Lottie.asset(Assets.logOutDialogImage)),
                  const LogOutDialogButton(),
                ],
              )),
        );
      });
}
