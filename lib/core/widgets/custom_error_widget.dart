import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:spacexx/core/resources/assets.dart';
import 'package:spacexx/core/themes/styles.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      const SizedBox(
        height: 100,
      ),
      SizedBox(width: 250, child: Lottie.asset(Assets.errorImage)),
      Text('Oops, something went wrong. Please try again',
          style: AppStyles.font15MediumWhite(context))
    ]));
  }
}
