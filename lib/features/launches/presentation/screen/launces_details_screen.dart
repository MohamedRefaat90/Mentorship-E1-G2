import 'package:flutter/material.dart';
import 'package:spacex/core/resources/assets.dart';
import 'package:spacex/core/widgets/launches_deatails_widgets.dart';
import 'package:spacex/features/home/data/models/launches/launches_model.dart';



class LaunchDetailsScreen extends StatelessWidget {
  final Launches launchItem;

  const LaunchDetailsScreen({Key? key, required this.launchItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Launch Details'),
      ),
      body: LaunchDetailsBody(launchItem: launchItem),
    );
  }
}
