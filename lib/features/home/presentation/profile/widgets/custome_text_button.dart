import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';
import 'package:mentorship_e1_g3/core/themes/styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor:
            AppPallete.kPurple, 
        padding: const EdgeInsets.symmetric(
            horizontal: 20.0, vertical: 10.0), 
      ),
      onPressed: () {},
      child: Text("Logout", style: AppStyles.semiBold16(context)),
    );
  }
}
