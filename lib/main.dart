import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'core/services/initServices.dart';
import 'features/splash/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:mentorship_e1_g3/core/screens/no_net_working_screen.dart';
import 'package:mentorship_e1_g3/core/themes/app_theme.dart';
import 'package:mentorship_e1_g3/features/Auth/login/cubit/login_cubit.dart';
import 'package:mentorship_e1_g3/features/Auth/login/presentation/screen/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppServices.init();

  runApp(DevicePreview(
      enabled: !kReleaseMode, builder: (context) => MentorshipE1G2()));
}

final GlobalKey<NavigatorState> navigator = GlobalKey<NavigatorState>();

class MentorshipE1G2 extends StatelessWidget {
  const MentorshipE1G2({super.key});
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
          home: OfflineBuilder(
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
          )),
    );
  }
}
