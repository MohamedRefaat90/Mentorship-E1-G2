import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/resources/assets.dart';

import '../../core/routing/app_routing.dart';
import '../Auth/login/presentation/pages/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    initAnimationController();
    setRotaionDegree(360);

    super.initState();
  }

  initAnimationController() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..forward();

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        pushReplacement(const LoginScreen());
      }
    });
  }

  setRotaionDegree(int degree) {
    final angle = degree * pi / 180;
    _animation =
        Tween<double>(begin: 0, end: angle).animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              AnimatedBuilder(
                animation: _animation,
                builder: (context, child) =>
                    Transform.rotate(angle: _animation.value, child: child),
                child: Center(
                  child: Image.asset(Assets.splashGalaxy),
                ),
              ),
              Center(
                  child: Image.asset(
                Assets.splashSpaceman,
                width: 190,
              )),
            ],
          ),
          Image.asset(Assets.splashSpaceText)
        ],
      ),
    );
  }
}
