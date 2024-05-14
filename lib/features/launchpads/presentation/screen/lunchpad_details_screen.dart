import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:spacexx/core/themes/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:spacexx/features/launchpads/data/models/lanuchpad_model.dart';

class LaunchpadDetailsScreen extends StatelessWidget {
  final LaunchpadModel launchpad;

  const LaunchpadDetailsScreen({Key? key, required this.launchpad}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(launchpad.name ?? '', style: AppStyles.font24BoldWhite(context)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: 'launchpad-${launchpad.id}',
                child: CachedNetworkImage(
                  imageUrl: launchpad.images ?? '',
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
              Text('Full Name: ${launchpad.fullName ?? ''}', style: AppStyles.font18SemiBoldWhite(context)),
              Text('Locality: ${launchpad.locality ?? ''}', style: AppStyles.font15MediumWhite(context)),
              Text('Region: ${launchpad.region ?? ''}', style: AppStyles.font15MediumWhite(context)),
              Text('Latitude: ${launchpad.latitude ?? ''}', style: AppStyles.font15MediumWhite(context)),
              Text('Longitude: ${launchpad.longitude ?? ''}', style: AppStyles.font15MediumWhite(context)),
              Text('Launch Attempts: ${launchpad.launchAttempts ?? ''}', style: AppStyles.font15MediumWhite(context)),
              Text('Launch Successes: ${launchpad.launchSuccesses ?? ''}', style: AppStyles.font15MediumWhite(context)),
              Text('Timezone: ${launchpad.timezone ?? ''}', style: AppStyles.font15MediumWhite(context)),
              Text('Status: ${launchpad.status ?? ''}', style: AppStyles.font15MediumWhite(context)),
              Text('Details: ${launchpad.details ?? ''}', style: AppStyles.font15MediumWhite(context)),
            ],
          ),
        ),
      ),
    );
  }
}
