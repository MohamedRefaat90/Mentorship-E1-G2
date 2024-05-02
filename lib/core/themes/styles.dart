import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';
import 'package:mentorship_e1_g3/core/extension/num_extension.dart';

class AppStyles {
  static TextStyle font24BoldWhite(BuildContext context) {
    return TextStyle(
      color: AppPallete.whiteColor,
      fontSize: 24.sp,
      fontWeight: FontWeight.w700,
      fontFamily:'Schibsted Grotesk'
    );
  }

  static TextStyle font15SemiBoldPurple(BuildContext context) {
    return TextStyle(
      color: AppPallete.purple,
      fontSize: 15.sp,
      fontWeight: FontWeight.w600,
      fontFamily:'Schibsted Grotesk'
    );
  }

  static TextStyle font18SemiBoldWhite(BuildContext context) {
    return TextStyle(
      color: AppPallete.whiteColor,
      fontSize: 18.sp,
      fontWeight: FontWeight.w600,
      fontFamily:'Schibsted Grotesk'  
        );
  }

  static TextStyle font15MediumWhite(BuildContext context) {
    return TextStyle(
      color: AppPallete.whiteColor,
      fontSize: 15.sp,
      fontWeight: FontWeight.w500,
      fontFamily:'Schibsted Grotesk'
    );
  }

  static TextStyle font15MediumGrey(BuildContext context) {
    return TextStyle(
      color: Colors.grey,
      fontSize: 15.sp,
      fontWeight: FontWeight.w500,
      fontFamily:'Schibsted Grotesk'
    );
  }
}
