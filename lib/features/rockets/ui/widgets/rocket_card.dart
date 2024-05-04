import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:spacex/core/extension/num_extension.dart';
import 'package:spacex/core/themes/app_pallete.dart';
import 'package:spacex/features/rockets/data/models/rocket_respons_body.dart';
import 'package:spacex/features/rockets/ui/widgets/status_container.dart';

import '../../../../core/themes/styles.dart';

class RocketCard extends StatelessWidget {
  const RocketCard({super.key, required this.rocket});
  final RocketModel rocket;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.height,
      width: double.infinity,
      child: Card(
        color: AppPalette.homeBG,
        child: Row(
          children: [
            Expanded(
              child: Image(
                image: CachedNetworkImageProvider(
                  rocket.flickrImages?[0] ?? "",
                ),
                width: 150.width,
                height: 150.height,
              ),
            ),
            SizedBox(
              width: 20.width,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 12.height,
                ),
                Text(
                  rocket.name!,
                  style: AppStyles.font18SemiBoldWhite(context),
                ),
                SizedBox(
                  height: 40.height,
                ),
                StatusContainer(isActive: rocket.active!),
              ],
            )
          ],
        ),
      ),
    );
  }
}
