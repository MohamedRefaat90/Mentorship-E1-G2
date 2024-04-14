import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/themes/app_theme.dart';
import 'package:mentorship_e1_g3/features/details/presentation/screen/details_screen.dart';
import 'features/Auth/login/presentation/pages/login_screen.dart';

void main() {
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
      home: SpaceXDetailsScreen(),
    );
  }
}
