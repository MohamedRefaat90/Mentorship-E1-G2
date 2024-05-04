import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:spacex/core/resources/assets.dart';

class DoneAnimationButton extends StatelessWidget {
  const DoneAnimationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 30,
        height: 30,
        child: Lottie.asset(Assets.signupButtonAnimation));
  }
}
