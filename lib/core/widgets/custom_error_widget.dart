import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mentorship_e1_g3/core/resources/assets.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
         width:200,
         height:200,
        child: Lottie.asset(Assets.errorImage))
      );
  }
}