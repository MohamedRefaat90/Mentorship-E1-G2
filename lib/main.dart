import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:mentorship_e1_g3/core/connectivity/no_network_screen.dart';
import 'package:mentorship_e1_g3/core/di/dependency_injection.dart';
import 'package:mentorship_e1_g3/core/themes/app_theme.dart';
import 'package:mentorship_e1_g3/features/home/presentation/screen/home_screen.dart';

import 'core/services/initServices.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppServices.init();
  await setUpGetIt();

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
      home: OfflineBuilder(
        connectivityBuilder: (
          BuildContext context,
          ConnectivityResult connectivity,
          Widget child,
        ) {
          final bool connected = connectivity != ConnectivityResult.none;

          if (connected) {
            return const HomeScreen();
          } else {
            return const NoNetWorkScreen();
          }
        },
        //TODO: i will change it when alyaa mirgee
        child:Container(),
      ),
    );
      
    
    
  }
}
