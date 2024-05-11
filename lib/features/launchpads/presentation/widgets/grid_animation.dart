import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../data/models/lanuchpad_model.dart';
import 'launchpad_image.dart';
import 'overlay_with_regionText.dart';

class GridAnimation extends StatelessWidget {
  const GridAnimation({
    super.key,
    required this.itemHeight,
    required this.launchpadDetails,
    required this.index,
  });

  final double itemHeight;
  final LaunchpadModel launchpadDetails;
  final int index;

  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredGrid(
      position: index,
      delay: const Duration(milliseconds: 375),
      columnCount: 2,
      child: SlideAnimation(
        horizontalOffset: 50.0,
        child: FadeInAnimation(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              LaunchpadImage(
                  itemHeight: itemHeight, image: launchpadDetails.images!),
              OverlayWithRegionText(
                  region: launchpadDetails.region!, itemHeight: itemHeight)
            ],
          ),
        ),
      ),
    );
  }
}
