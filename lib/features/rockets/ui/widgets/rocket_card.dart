import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/extension/num_extension.dart';
import 'package:mentorship_e1_g3/core/resources/assets.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';
import 'package:mentorship_e1_g3/features/rockets/ui/widgets/status_container.dart';

import '../../../../core/themes/styles.dart';

class RocketCard extends StatelessWidget {
  const RocketCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      width: double.infinity,
      child: Card(
        color: AppPallete.homeBG,
        child: Row(
          children: [
            Image(
              image: const AssetImage(Assets.rocket),
              width: 100.w,
              height: 100.h,
            ),
            SizedBox(
              width: 20.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  "Rockrt",
                  style: AppStyles.font10SemiBoldPurple(context),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  "Starlink 2",
                  style: AppStyles.font16SemiBoldWhite(context),
                ),
                SizedBox(
                  height: 12.h,
                ),
                const StatusContainer(isActive: false),
              ],
            )
          ],
        ),
      ),
    );
  }
}
