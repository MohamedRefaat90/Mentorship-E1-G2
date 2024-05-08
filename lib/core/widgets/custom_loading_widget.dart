import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:spacexx/core/resources/assets.dart';

class CustomLoadingWidget extends StatelessWidget {
  const CustomLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(height: 200, child: Lottie.asset(Assets.loadingImage)),
        const SizedBox(
          height: 20,
        ),
        const LinearProgressIndicator(),
        const SizedBox(
          height: 120,
        ),
      ]),
    );
  }
}
