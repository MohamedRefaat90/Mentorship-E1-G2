import 'package:flutter/material.dart';
import 'package:spacexx/core/themes/styles.dart';
import 'package:spacexx/core/themes/app_pallete.dart';
import 'package:spacexx/core/extension/num_extension.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:spacexx/features/home/data/models/launches/launches_model.dart';
import 'package:spacexx/features/launches/presentation/screen/launces_details_screen.dart';

class LaunchItem extends StatelessWidget {
  final Launches launchItem;
  const LaunchItem({super.key, required this.launchItem});
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LaunchDetailsScreen(launchItem: launchItem),
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
                  CachedNetworkImage(
                    imageUrl: '${launchItem.links!.patch!.small}',
                    errorWidget: ((context, url, error) =>
                        const Icon(Icons.error)),
                    width: 100.width,
                    height: 100,
                  ),
                  SizedBox(
                    height: 5.height,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('LAUNCH',
                          style: AppStyles.font15SemiBoldPurple(context)),
                      SizedBox(
                        height: 5.height,
                      ),
                      Text(
                        '${launchItem.name}',
                        style: AppStyles.font18SemiBoldWhite(context),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 5.height),
                      Text(
                        '${launchItem.id}',
                        style: AppStyles.font15MediumWhite(context),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
