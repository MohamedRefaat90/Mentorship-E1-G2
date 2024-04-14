import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';
import 'package:mentorship_e1_g3/core/themes/styles.dart';
import 'package:mentorship_e1_g3/features/details/presentation/widgets/details_widgets.dart';

class SpaceXDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace with your actual image URLs
    const String topImageUrl =
        'https://images2.imgbox.com/bd/fe/lXUYKL28_o.png';

    const String sneakPeakImageUrl =
        'https://farm5.staticflickr.com/4599/38583829295_581f34dd84_b.jpg';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppPallete.detailsBackgroundColor,
        actions: const [Icon(Icons.share)],
      ),
      backgroundColor: AppPallete.detailsBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              SpaceXDetailsWidgets.topImage(topImageUrl),
              const SizedBox(
                height: 30,
              ),
              SpaceXDetailsWidgets.textWithSpacing(
                'Rocket',
                AppStyles.fontSmallRed(context),
              ),
              SpaceXDetailsWidgets.textWithSpacing(
                'Falcon 1',
                AppStyles.font12MediumWhite(context),
              ),
              SpaceXDetailsWidgets.textWithSpacing(
                'LAUNCH DATE',
                AppStyles.fontSmallRed(context),
              ),
              SpaceXDetailsWidgets.textWithSpacing(
                '01-03-2019',
                AppStyles.font12MediumWhite(context),
              ),
              SpaceXDetailsWidgets.textWithSpacing(
                'LAUNCH SITE',
                AppStyles.fontSmallRed(context),
              ),
              SpaceXDetailsWidgets.textWithSpacing(
                'CCAFS SLC 40',
                AppStyles.font12MediumWhite(context),
              ),
              SpaceXDetailsWidgets.textWithSpacing(
                'LAUNCH STATUS',
                AppStyles.fontSmallRed(context),
              ),
              SpaceXDetailsWidgets.textWithSpacing(
                'Success',
                AppStyles.font12MediumWhite(context),
              ),
              SpaceXDetailsWidgets.textWithSpacing(
                'DETAILS',
                AppStyles.fontSmallRed(context),
              ),
              SpaceXDetailsWidgets.textWithSpacing(
                'Last launch of the original Falcon 9 v1.0 launch vehicle',
                AppStyles.font12MediumWhite(context),
              ),
              SpaceXDetailsWidgets.textWithSpacing(
                'ROCKET SUMMARY',
                AppStyles.fontSmallRed(context),
              ),
              SpaceXDetailsWidgets.textWithSpacing(
                'Falcon 9',
                AppStyles.font12MediumWhite(context),
              ),
              SpaceXDetailsWidgets.textWithSpacing(
                'TYPE',
                AppStyles.fontSmallRed(context),
              ),
              SpaceXDetailsWidgets.textWithSpacing(
                'v1.0',
                AppStyles.font12MediumWhite(context),
              ),
              SpaceXDetailsWidgets.rowWithSpacing(
                Text(
                  'FIRST STAGE',
                  style: AppStyles.fontSmallRed(context),
                ),
                Text(
                  'SECOND STAGE',
                  style: AppStyles.fontSmallRed(context),
                ),
              ),
              SpaceXDetailsWidgets.rowWithSpacing(
                Text(
                  'Cores: 4',
                  style: AppStyles.font12MediumWhite(context),
                ),
                Text(
                  'Payloads: 150kg',
                  style: AppStyles.font12MediumWhite(context),
                ),
              ),
              SpaceXDetailsWidgets.rowWithSpacing(
                Text(
                  'Youtube',
                  style: AppStyles.fontSmallRed(context),
                ),
                Text(
                  'REDDIT',
                  style: AppStyles.fontSmallRed(context),
                ),
              ),
              SpaceXDetailsWidgets.bottomImage(sneakPeakImageUrl)
            ],
          ),
        ),
      ),
    );
  }
}
