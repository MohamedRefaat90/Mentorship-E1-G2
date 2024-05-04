import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/extension/num_extension.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';
import 'package:mentorship_e1_g3/features/rockets/data/models/rocket_respons_body.dart';
import 'package:mentorship_e1_g3/features/rockets/ui/widgets/status_container.dart';

import '../../../../core/themes/styles.dart';

class RocketCard extends StatelessWidget {
  const RocketCard({super.key, required this.rocket});
  final RocketModel rocket;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.height,
      width: 200.width,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.width),
        decoration: BoxDecoration(
          color: AppPalette.homeBG.withOpacity(0.7),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30.height,
                ),
                Text(
                  rocket.name!,
                  style: AppStyles.font18SemiBoldWhite(context),
                ),
                SizedBox(
                  height: 30.height,
                ),
                StatusContainer(isActive: rocket.active!),
              ],
            ),
            SizedBox(
              width: 20.width,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: CachedNetworkImageProvider(
                    rocket.flickrImages?[0] ?? "",
                  ),
                  width: 100.width,
                  height: 150.height,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
