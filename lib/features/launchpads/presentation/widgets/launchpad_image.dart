import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class LaunchpadImage extends StatelessWidget {
  const LaunchpadImage(
      {super.key,
      required this.itemHeight,
      required this.image,
      required this.launchpadId});

  final double itemHeight;
  final String image;
  final String launchpadId;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'launchpad-$launchpadId',
      child: Container(
        height: itemHeight,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xff351C3D)),
        child: CachedNetworkImage(
            imageUrl: image,
            fit: BoxFit.fitHeight,
            placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(color: Colors.white))),
      ),
    );
  }
}
