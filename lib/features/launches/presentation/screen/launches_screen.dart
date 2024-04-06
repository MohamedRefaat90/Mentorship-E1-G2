import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/widgets/launch_item.dart';

import '../widgets/custom_launch_app_bar.dart';

class LaunchesScreen extends StatelessWidget {
  const LaunchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomLaunchAppBar(),
        Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index)=>const Padding(
              padding:  EdgeInsets.all(12.0),
              child: LaunchItem(),
            ),
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}