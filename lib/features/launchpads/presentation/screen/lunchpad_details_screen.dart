import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:spacexx/features/launchpads/data/models/lanuchpad_model.dart';

class LaunchpadDetailsScreen extends StatelessWidget {
  final LaunchpadModel launchpad;

  const LaunchpadDetailsScreen({Key? key, required this.launchpad})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(launchpad.name ?? ''),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(launchpad.details ?? ''),
      ),
    );
  }
}
