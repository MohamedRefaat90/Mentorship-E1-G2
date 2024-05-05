import 'package:flutter/material.dart';
import 'package:spacex/core/resources/assets.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:spacex/features/home/data/models/launches/launches_model.dart';
import 'package:spacex/features/launches/presentation/video_player_screen.dart';

class LaunchDetailsScreen extends StatelessWidget {
  final Launches launchItem;

  const LaunchDetailsScreen({Key? key, required this.launchItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Launch Details'),
      ),
      body: Stack(
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
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Launch Date:',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  launchItem.dateLocal ?? 'Unknown',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Details:',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  launchItem.details ?? 'No details available.',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Rocket:',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  launchItem.rocket ?? 'Unknown',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Launchpad:',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  launchItem.launchpad ?? 'Unknown',
                  style: TextStyle(fontSize: 16.0),
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
      ),
    );
  }
}
