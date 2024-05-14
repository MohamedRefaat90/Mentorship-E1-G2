import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:spacexx/features/launchpads/data/models/lanuchpad_model.dart';

import 'grid_animation.dart';

class DragonsGridView extends StatelessWidget {
  final List<LaunchpadModel> launchpadsList;

  const DragonsGridView({super.key, required this.launchpadsList});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: AnimationLimiter(
        child: MasonryGridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          itemCount: launchpadsList.length,
          itemBuilder: (context, index) {
            LaunchpadModel launchpadDetails = launchpadsList[index];
            double itemHeight = (index % 4 + 1) * 130;
            return GridAnimation(
                index: index,
                itemHeight: itemHeight,
                launchpadDetails: launchpadDetails);
          },
        ),
      ),
    );
  }
}
