import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/services/sharedprefs.dart';

import '../../../core/routing/app_routing.dart';
import '../../Auth/login/presentation/screen/login_screen.dart';

class GetStartButton extends StatelessWidget {
  const GetStartButton({
    super.key,
    required this.pageValue,
    required this.pageController,
  });

  final double pageValue;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (pageValue < 2.0) {
          pageController.nextPage(
              duration: const Duration(seconds: 1), curve: Curves.ease);
        } else {
          SharedPreferencesService.sharedPreferences!
              .setBool("isFirstTime", false);
          debugPrint(SharedPreferencesService.isFirstTime().toString());
          pushReplacement(const LoginScreen());
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: AnimatedCrossFade(
          duration: const Duration(milliseconds: 500),
          // height: 50,
          crossFadeState: pageValue < 2.0
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          firstChild: const Center(
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 30,
              color: Colors.white,
            ),
          ),
          secondChild: const Center(
            child: Text(
              "Get Started",
              textScaler: TextScaler.linear(0.9),
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
