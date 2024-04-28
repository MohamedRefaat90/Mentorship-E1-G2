import 'package:flutter/material.dart';

import '../themes/app_pallete.dart';

class BtnLoader extends StatelessWidget {
  const BtnLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 25,
      height: 25,
      child: CircularProgressIndicator(
        color: AppPallete.whiteColor,
        strokeWidth: 5,
      ),
    );
  }
}
