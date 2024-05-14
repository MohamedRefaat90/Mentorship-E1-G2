import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:spacexx/core/themes/styles.dart';
import 'package:spacexx/core/resources/assets.dart';
import 'package:spacexx/features/launchpads/data/models/lanuchpad_model.dart';
import 'package:spacexx/features/launchpads/presentation/widgets/launchpad_deatails_screen_widgets.dart';
// import the file containing the widgets

class LaunchpadDetailsScreen extends StatelessWidget {
  final LaunchpadModel launchpad;

  const LaunchpadDetailsScreen({Key? key, required this.launchpad})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(launchpad.name ?? '',
            style: AppStyles.font24BoldWhite(context)),
      ),
      body: LaunchpadDetailsWidgets(
          launchpad: launchpad), // use the widgets from the other file
    );
  }
}
