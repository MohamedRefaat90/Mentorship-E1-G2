import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:spacexx/core/resources/assets.dart';

class NoNetWorkScreen extends StatelessWidget {
  const NoNetWorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Positioned.fill(
                child: Opacity(
                  opacity: 0.5,
                  child: Image.asset(
                    Assets.backgroundImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Center(
                child: Lottie.asset(Assets.notInternetConnection),
              )
            ],
          ),
        ),
      );
    });
  }
}
