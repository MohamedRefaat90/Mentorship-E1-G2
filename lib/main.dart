import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:spacexx/features/Auth/login/presentation/screen/login_screen.dart';
import 'package:spacexx/features/splash/splash_screen.dart';
import 'core/services/initServices.dart';
import 'core/widgets/app_connectivity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacexx/core/themes/app_theme.dart';
import 'package:device_preview/device_preview.dart';
import 'package:spacexx/features/Auth/login/cubit/login_cubit.dart';

import 'features/launchpads/presentation/screen/launchpad_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppServices.init();

  runApp(DevicePreview(
      enabled: !kReleaseMode, builder: (context) => const SpaceX()));
}

final GlobalKey<NavigatorState> navigator = GlobalKey<NavigatorState>();

class SpaceX extends StatelessWidget {
  const SpaceX({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) => LoginCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        theme: AppTheme.darkTthemeMode,
        navigatorKey: navigator,
        home: const SplashScreen(),
        routes: {'/Login': (context) => const LoginScreen()},
      ),
    );
  }
}
