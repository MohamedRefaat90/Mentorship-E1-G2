import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';
import 'package:mentorship_e1_g3/core/extension/num_extension.dart';

class AppStyles {
  static TextStyle font24BoldWhite(BuildContext context) {
class AppStyles {
  static TextStyle font24BoldWhite(BuildContext context) {
    return TextStyle(
      color: AppPalette.whiteColor,
      fontSize: 24.scaleText,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle font10SemiBoldPurple(BuildContext context) {

  static TextStyle font10SemiBoldPurple(BuildContext context) {
    return TextStyle(
      color: AppPalette.purple,
      fontSize: 10.scaleText,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle font16SemiBoldWhite(BuildContext context) {

  static TextStyle font16SemiBoldWhite(BuildContext context) {
    return TextStyle(
      color: AppPalette.whiteColor,
      fontSize: 16.scaleText,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle font12MediumWhite(BuildContext context) {

  static TextStyle font12MediumWhite(BuildContext context) {
    return TextStyle(
      color: AppPalette.whiteColor,
      fontSize: 12.scaleText,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle fontSmallRed(BuildContext context) {
    return TextStyle(
      color: AppPalette.detailsColor,
      fontSize: 12.scaleText,
      fontWeight: FontWeight.w500,
    );
  }
}
