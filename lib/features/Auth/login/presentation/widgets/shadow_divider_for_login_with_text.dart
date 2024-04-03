import 'package:flutter/material.dart';

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
                BoxShadow(color: Colors.black, spreadRadius: 30, blurRadius: 40)
              ],
              color: Colors.black.withOpacity(0.5),
              borderRadius: const BorderRadius.all(Radius.circular(50)))),
    );
  }
}
