import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';

class ShadowDividerForLoginWithText extends StatelessWidget {
  final double horizontalOffest;
  const ShadowDividerForLoginWithText(
      {super.key, required this.horizontalOffest});
  @override
  Widget build(BuildContext context) {
    double sceenWidth = MediaQuery.sizeOf(context).width;
    return Positioned(
      top: -5,
      left: sceenWidth * horizontalOffest,
      child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    color: AppPallete.backgroundColor,
                    spreadRadius: 40,
                    blurRadius: 40)
              ],
              color: AppPallete.backgroundColor.withOpacity(1),
              borderRadius: const BorderRadius.all(Radius.circular(50)))),
    );
  }
}
