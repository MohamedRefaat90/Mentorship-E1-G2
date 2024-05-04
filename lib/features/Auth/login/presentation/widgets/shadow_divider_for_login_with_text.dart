import 'package:flutter/material.dart';

class ShadowDividerForLoginWithText extends StatelessWidget {
  final double horizontalOffest;
  const ShadowDividerForLoginWithText(
      {super.key, required this.horizontalOffest});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Positioned(
      top: -5,
      left: screenWidth * horizontalOffest,
      child: Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(color: Colors.black, spreadRadius: 40, blurRadius: 40)
              ],
              color: Colors.black.withOpacity(1),
              borderRadius: const BorderRadius.all(Radius.circular(50)))),
    );
  }
}
