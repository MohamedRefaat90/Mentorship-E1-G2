import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';
import 'package:mentorship_e1_g3/core/extension/num_extension.dart';

class AppStyles {
  static TextStyle font24BoldWhite(BuildContext context) {
    return TextStyle(
      color: AppPallete.whiteColor,
      fontSize: 24.scaleText,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle font10SemiBoldPurple(BuildContext context) {
    return TextStyle(
      color: AppPallete.purple,
      fontSize: 10.scaleText,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle font16SemiBoldWhite(BuildContext context) {
    return TextStyle(
      color: AppPallete.whiteColor,
      fontSize: 16.scaleRadius,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle font12MediumWhite(BuildContext context) {
    return TextStyle(
      color: AppPallete.whiteColor,
      fontSize: 12.scaleText,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle fontSmallRed(BuildContext context) {
    return TextStyle(
      color: AppPallete.detailsColor,
      fontSize: 12.scaleText,
      fontWeight: FontWeight.w500,
    );
  }
}
