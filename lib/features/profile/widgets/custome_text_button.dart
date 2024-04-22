import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';

import '../../../core/themes/styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
  onPressed: () {},
  style: TextButton.styleFrom(
    backgroundColor:AppPallete.purple, 
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0), 
),
  child: Text("Logout", style: AppStyles.font16SemiBoldWhite(context)),);

  }
}
