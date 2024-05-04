import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mentorship_e1_g3/features/onboarding/screens/onboarding.dart';

import '../../core/helpers/functions/customLottieDecoder.dart';
import '../../core/routing/app_routing.dart';
import '../Auth/login/presentation/screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5),
        () => pushReplacement(const OnboardingScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: Lottie.asset("assets/animations/splash/SpacexSplash.lottie",
                decoder: customDecoder)));
  }
}
