import 'package:flutter/material.dart';
import 'package:spacexx/core/widgets/launches_deatails_widgets.dart';
import 'package:spacexx/features/home/data/models/launches/launches_model.dart';

class LaunchDetailsScreen extends StatelessWidget {
  final Launches launchItem;

  const LaunchDetailsScreen({super.key, required this.launchItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Launch Details'),
      ),
      body: LaunchDetailsBody(launchItem: launchItem),
    );
  }
}
