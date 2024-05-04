import 'package:flutter/material.dart';
import 'package:spacex/core/themes/app_pallete.dart';

void showSnackBar(BuildContext context, String message, [Color? color]) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        backgroundColor: color ?? AppPalette.errorColor,
        content: Text(message,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: AppPalette.whiteColor)),
      ),
    );
}
