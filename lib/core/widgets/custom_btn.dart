import 'package:flutter/material.dart';

class CustomBTN extends StatelessWidget {
  const CustomBTN(
      {super.key,
      required this.widget,
      required this.press,
      this.color,
      this.padding,
      this.width,
      this.isDisabled = false});
  final Widget widget;
  final void Function()? press;
  final Color? color;
  final double? padding;
  final double? width;
  final bool isDisabled;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      animationDuration: const Duration(milliseconds: 700),
      onPressed: isDisabled ? null : press,
      padding: EdgeInsets.all(padding ?? 20),
      minWidth: width ?? 50,
      textColor: Colors.white,
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      enableFeedback: true,
      disabledColor: Colors.grey,
      child: widget,
    );
  }
}
