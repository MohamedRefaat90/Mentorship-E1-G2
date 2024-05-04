import 'package:flutter/material.dart';
import 'package:spacex/core/themes/app_pallete.dart';
import 'package:spacex/core/themes/styles.dart';
import 'package:spacex/features/details/presentation/widgets/details_widgets.dart';

class SpaceXDetailsScreen extends StatelessWidget {
  const SpaceXDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Replace with your actual image URLs
    const String topImageUrl =
        'https://images2.imgbox.com/bd/fe/lXUYKL28_o.png';

    const String sneakPeakImageUrl =
        'https://farm5.staticflickr.com/4599/38583829295_581f34dd84_b.jpg';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppPalette.homeBG,
        actions: const [Icon(Icons.share)],
      ),
      backgroundColor: AppPalette.homeBG,
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
                AppStyles.font15SemiBoldPurple(context),
              ),
              SpaceXDetailsWidgets.textWithSpacing(
                'Falcon 1',
                AppStyles.font18SemiBoldWhite(context), // Updated font style
              ),
              SpaceXDetailsWidgets.textWithSpacing(
                'LAUNCH DATE',
                AppStyles.font15SemiBoldPurple(context),
              ),
              SpaceXDetailsWidgets.textWithSpacing(
                '01-03-2019',
                AppStyles.font15MediumWhite(context),
              ),
              SpaceXDetailsWidgets.textWithSpacing(
                'LAUNCH SITE',
                AppStyles.font15SemiBoldPurple(context),
              ),
              SpaceXDetailsWidgets.textWithSpacing(
                'CCAFS SLC 40',
                AppStyles.font15MediumWhite(context),
              ),
              SpaceXDetailsWidgets.textWithSpacing(
                'LAUNCH STATUS',
                AppStyles.font15SemiBoldPurple(context),
              ),
              SpaceXDetailsWidgets.textWithSpacing(
                'Success',
                AppStyles.font15MediumWhite(context),
              ),
              SpaceXDetailsWidgets.textWithSpacing(
                'DETAILS',
                AppStyles.font15SemiBoldPurple(context),
              ),
              SpaceXDetailsWidgets.textWithSpacing(
                'Last launch of the original Falcon 9 v1.0 launch vehicle',
                AppStyles.font15MediumWhite(context),
              ),
              SpaceXDetailsWidgets.textWithSpacing(
                'ROCKET SUMMARY',
                AppStyles.font15SemiBoldPurple(context),
              ),
              SpaceXDetailsWidgets.textWithSpacing(
                'Falcon 9',
                AppStyles.font18SemiBoldWhite(context), // Updated font style
              ),
              SpaceXDetailsWidgets.textWithSpacing(
                'TYPE',
                AppStyles.font15SemiBoldPurple(context),
              ),
              SpaceXDetailsWidgets.textWithSpacing(
                'v1.0',
                AppStyles.font18SemiBoldWhite(context),
              ),
              SpaceXDetailsWidgets.rowWithSpacing(
                Text(
                  'FIRST STAGE',
                  style: AppStyles.font15SemiBoldPurple(context),
                ),
                Text(
                  'SECOND STAGE',
                  style: AppStyles.font15SemiBoldPurple(context),
                ),
              ),
              SpaceXDetailsWidgets.rowWithSpacing(
                Text(
                  'Cores: 4',
                  style: AppStyles.font18SemiBoldWhite(context),
                ),
                Text(
                  'Payloads: 150kg',
                  style: AppStyles.font18SemiBoldWhite(context),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SpaceXDetailsWidgets.rowWithSpacing(
                SpaceXDetailsWidgets.youtubeIcon(context, () {
                  // Handle onPressed for YouTube
                }),
                SpaceXDetailsWidgets.redditIcon(context, () {
                  // Handle onPressed for Reddit
                }),
              ),
              SpaceXDetailsWidgets.bottomImage(sneakPeakImageUrl)
            ],
          ),
        ),
      ),
    );
  }
}
