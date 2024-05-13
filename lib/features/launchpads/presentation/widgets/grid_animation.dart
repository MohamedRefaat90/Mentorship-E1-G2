import 'launchpad_image.dart';
import 'overlay_with_regionText.dart';
import 'package:flutter/material.dart';
import '../../data/models/lanuchpad_model.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:spacexx/features/launchpads/presentation/screen/lunchpad_details_screen.dart';



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
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LaunchpadDetailsScreen(launchpad: launchpadDetails),
          ),
        );
      },
      child: AnimationConfiguration.staggeredGrid(
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
      ),
    );
  }
}
