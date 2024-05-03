import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/extension/num_extension.dart';
import 'package:mentorship_e1_g3/core/resources/assets.dart';
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
      height: 150.height,
      width: double.infinity,
      child: Card(
        color: AppPalette.homeBG,
        child: Row(
          children: [
            Image(
              image: const AssetImage(Assets.rocket),
              width: 100.width,
              height: 100.height,
            ),
            SizedBox(
              width: 20.width,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 12.height,
                ),
                Text(
                  rocket.name!,
                  style: AppStyles.font10SemiBoldPurple(context),
                ),
                SizedBox(
                  height: 12.height,
                ),
                Text(
                  rocket.name!,
                  style: AppStyles.font16SemiBoldWhite(context),
                ),
                SizedBox(
                  height: 12.height,
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
