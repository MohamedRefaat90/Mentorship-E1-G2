import 'package:flutter/material.dart';
import 'package:spacex/core/themes/styles.dart';
import 'package:spacex/core/resources/assets.dart';
import 'package:spacex/core/extension/num_extension.dart';
import 'package:spacex/features/home/data/models/launches/launches_model.dart';
import 'package:spacex/features/launches/presentation/screen/video_player_screen.dart';

class LaunchDetailsBody extends StatelessWidget {
  final Launches launchItem;

  const LaunchDetailsBody({Key? key, required this.launchItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Assets.backgroundImage,
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                launchItem.name ?? 'Unknown Launch',
                style: AppStyles.font24BoldPurple(context),
              ),
              SizedBox(height: 16.0),
              Text(
                'Launch Date:',
                style: AppStyles.font18SemiBoldPurple(context),
              ),
              Text(
                launchItem.dateLocal ?? 'Unknown',
                style: AppStyles.font15MediumWhite(context),
              ),
              SizedBox(height: 16.0),
              Text(
                'Details:',
                style: AppStyles.font18SemiBoldPurple(context),
              ),
              Text(
                launchItem.details ?? 'No details available.',
                style: AppStyles.font15MediumWhite(context),
              ),
              SizedBox(height: 16.0),
              Text(
                'Rocket:',
                style: AppStyles.font18SemiBoldPurple(context),
              ),
              Text(
                launchItem.rocket ?? 'Unknown',
                style: AppStyles.font15MediumWhite(context),
              ),
              SizedBox(height: 16.0),
              Text(
                'Launchpad:',
                style: AppStyles.font18SemiBoldPurple(context),
              ),
              Text(
                launchItem.launchpad ?? 'Unknown',
                style: AppStyles.font15MediumWhite(context),
              ),
              SizedBox(height: 16.0),
              if (launchItem.links?.webcast != null)
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VideoPlayerScreen(
                          videoUrl: launchItem.links?.webcast ?? '',
                        ),
                      ),
                    );
                  },
                  child: Text('Watch Webcast'),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
