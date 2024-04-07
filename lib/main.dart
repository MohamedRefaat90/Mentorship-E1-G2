import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/di/dependency_injection.dart';
import 'package:mentorship_e1_g3/core/themes/app_theme.dart';
import 'package:mentorship_e1_g3/features/home/presentation/screen/home_screen.dart';


void main()async {
  setUpGetIt();
  runApp(const MentorshipE1G2());
}

final GlobalKey<NavigatorState> navigator = GlobalKey<NavigatorState>();

class MentorshipE1G2 extends StatelessWidget {
  const MentorshipE1G2({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTthemeMode,
      navigatorKey: navigator,
      home: const HomeScreen(),
    );
  }
}
