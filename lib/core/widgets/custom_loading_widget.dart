import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mentorship_e1_g3/core/resources/assets.dart';

class CustomLoadingWidget extends StatelessWidget {
  const CustomLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            SizedBox(
              width:200,
              height:200,
              child: Lottie.asset(Assets.loadingImage)
              ),
            const SizedBox(
              height: 15,
            ),
            const LinearProgressIndicator()
          ],
        ),
      ),
    );
  }
}