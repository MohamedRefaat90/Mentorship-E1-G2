import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialLoginBtn extends StatelessWidget {
  final String svgIcon;
  final String lable;
  const SocialLoginBtn({super.key, required this.svgIcon, required this.lable});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 40),
      shape: const RoundedRectangleBorder(
          side: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            svgIcon,
            width: 30,
          ),
          const SizedBox(width: 10),
          Text(lable)
        ],
      ),
    );
  }
}
