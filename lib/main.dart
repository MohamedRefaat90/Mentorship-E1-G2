import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/core/themes/app_theme.dart';
import 'package:spacex/features/Auth/login/cubit/login_cubit.dart';

import 'core/services/initServices.dart';
import 'core/widgets/app_connectivity.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppServices.init();

  runApp(DevicePreview(
      enabled: !kReleaseMode, builder: (context) => const MentorshipE1G2()));
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
          home: const AppConnectivity()),
    );
  }
}
