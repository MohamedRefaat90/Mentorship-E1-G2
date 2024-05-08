import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';

import '../../features/splash/splash_screen.dart';
import '../screens/no_net_working_screen.dart';

class AppConnectivity extends StatelessWidget {
  const AppConnectivity({super.key});

  @override
  Widget build(BuildContext context) {
    return OfflineBuilder(
      connectivityBuilder: (
        BuildContext context,
        ConnectivityResult connectivity,
        Widget child,
      ) {
        final bool connected = connectivity != ConnectivityResult.none;
        if (connected) {
          return child;
        } else {
          return const NoNetWorkScreen();
        }
      },
      child: const SplashScreen(),
    );
  }
}
