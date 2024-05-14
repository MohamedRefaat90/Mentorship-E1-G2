import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:spacexx/core/themes/styles.dart';
import 'package:spacexx/core/resources/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:spacexx/features/launchpads/data/models/lanuchpad_model.dart';

class LaunchpadDetailsWidgets extends StatelessWidget {
  final LaunchpadModel launchpad;

  const LaunchpadDetailsWidgets({Key? key, required this.launchpad})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Assets.backgroundImage,
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: 'launchpad-${launchpad.id}',
                  child: CachedNetworkImage(
                    imageUrl: launchpad.images ?? '',
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
                const SizedBox(height: 10),
                Text('Full Name: ',
                    style: AppStyles.font15MediumPurple(context)),
                Text('${launchpad.fullName ?? ''}',
                    style: AppStyles.font18SemiBoldWhite(context)),
                const SizedBox(height: 10),
                Text('Locality: ',
                    style: AppStyles.font15MediumPurple(context)),
                Text('${launchpad.locality ?? ''}',
                    style: AppStyles.font15MediumWhite(context)),
                const SizedBox(height: 10),
                Text('Region: ', style: AppStyles.font15MediumPurple(context)),
                Text('${launchpad.region ?? ''}',
                    style: AppStyles.font15MediumWhite(context)),
                const SizedBox(height: 10),
                Text('Latitude: ',
                    style: AppStyles.font15MediumPurple(context)),
                Text('${launchpad.latitude ?? ''}',
                    style: AppStyles.font15MediumWhite(context)),
                const SizedBox(height: 10),
                Text('Launch Attempts: ',
                    style: AppStyles.font15MediumPurple(context)),
                Text('${launchpad.launchAttempts ?? ''}',
                    style: AppStyles.font15MediumWhite(context)),
                const SizedBox(height: 10),
                Text('Timezone: ',
                    style: AppStyles.font15MediumPurple(context)),
                Text('${launchpad.timezone ?? ''}',
                    style: AppStyles.font15MediumWhite(context)),
                const SizedBox(height: 10),
                Text('Status: ', style: AppStyles.font15MediumPurple(context)),
                Text('${launchpad.status ?? ''}',
                    style: AppStyles.font15MediumWhite(context)),
                const SizedBox(height: 10),
                Text('Details: ', style: AppStyles.font15MediumPurple(context)),
                Text('${launchpad.details ?? ''}',
                    style: AppStyles.font15MediumWhite(context)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
