import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mentorship_e1_g3/core/services/sharedprefs.dart';
import 'package:mentorship_e1_g3/features/home/presentation/screen/home_screen.dart';
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

    Future.delayed(
        const Duration(milliseconds: 6500),
        () => pushReplacement(SharedPreferencesService.isFirstTime() == null
            ? const OnboardingScreen()
            : SharedPreferencesService.getUserID() == null
                ? const LoginScreen()
                : const HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: Lottie.asset("assets/animations/splash/SpacexSplash.lottie",
                frameRate: FrameRate.max, decoder: customDecoder)));
  }
}
