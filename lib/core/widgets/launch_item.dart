import 'package:flutter/material.dart';
import 'package:spacex/core/themes/app_pallete.dart';
import 'package:spacex/core/extension/num_extension.dart';
import 'package:spacex/features/home/data/models/launches/launches_model.dart';
import 'package:spacex/features/launches/presentation/screen/launces_details_screen.dart'; 


class LaunchItem extends StatelessWidget {
  final Launches launchItem;
  const LaunchItem({Key? key, required this.launchItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LaunchDetailsScreen(launchItem: launchItem), // Pass the launch item to the details screen
          ),
        );
      },
      child: SizedBox(
        height: 430.height,
        width: 150.width,
        child: Container(
          decoration: BoxDecoration(
            color: AppPalette.homeBG.withOpacity(0.7),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppPalette.whiteColor),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Your existing content
              ],
            ),
          ),
        ),
      ),
    );
  }
}
