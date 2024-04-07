import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/extension/num_extension.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';

class AppStyles{
    static TextStyle bold24(BuildContext context) {
    return TextStyle(
      color: AppPallete.whiteColor,
      fontSize: 24.sp,
      fontWeight: FontWeight.w700,
    );
  }
  
 static TextStyle semiBold10(BuildContext context) {
    return TextStyle(
      color: AppPallete.kPurple,
      fontSize: 10.sp,
      fontWeight: FontWeight.w600,
    );
  }
static TextStyle semiBold16(BuildContext context) {
    return TextStyle(
      color: AppPallete.whiteColor,
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
    );
  }
static TextStyle medium12(BuildContext context) {
    return TextStyle(
      color: AppPallete.whiteColor,
      fontSize: 12.sp,
      fontWeight: FontWeight.w500,
    );
  }
}