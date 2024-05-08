import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
    required this.pageValue,
    required this.pageController,
    required this.selectedIndex,
  });

  final double pageValue;
  final PageController pageController;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: pageValue >= 1.8 ? 0 : 1,
      duration: const Duration(milliseconds: 400),
      child: InkWell(
        onTap: () {
          pageController.animateToPage(2,
              duration: Duration(milliseconds: selectedIndex == 0 ? 1000 : 600),
              curve: Curves.easeIn);
        },
        child: const Text(
          "Skip",
          textScaler: TextScaler.linear(1.2),
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
