import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';
import '../screens/no_net_working_screen.dart';

typedef DataFetchingFunction = void Function(BuildContext context);

class AppConnectivity extends StatelessWidget {
  const AppConnectivity({super.key,
  required this.child,
  this.fetchData
  });

  final Widget child;
  final DataFetchingFunction? fetchData;
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
          fetchData?.call(context);
          return child;
        } else {
          return const NoNetWorkScreen();
        }
      },
      child: child,
    );
  }
}
