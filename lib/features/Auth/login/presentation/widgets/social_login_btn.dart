import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialLoginBtn extends StatelessWidget {
  final String svgIcon;
  final String lable;
  final void Function()? press;
  const SocialLoginBtn(
      {super.key, required this.svgIcon, required this.lable, this.press});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: press,
      padding: const EdgeInsets.symmetric(vertical: 8),
      shape: const RoundedRectangleBorder(
          side: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(svgIcon, width: 25),
          const SizedBox(width: 10),
          Text(lable, style: const TextStyle(color: Colors.white))
        ],
      ),
    );
  }
}
