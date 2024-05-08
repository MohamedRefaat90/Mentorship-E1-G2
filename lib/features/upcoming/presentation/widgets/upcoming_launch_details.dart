import 'package:flutter/material.dart';
import 'package:spacexx/core/extension/num_extension.dart';
import 'package:spacexx/core/themes/styles.dart';

class UpComingLaunchDetails extends StatelessWidget {
  const UpComingLaunchDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'LAUNCH DATE',
            style: AppStyles.font15SemiBoldPurple(context),
          ),
          SizedBox(
            height: 12.height,
          ),
          Text(
            'Thu May 7, 2024 at 5:30:00 am',
            style: AppStyles.font18SemiBoldWhite(context),
          ),
          SizedBox(
            height: 28.height,
          ),
          Text(
            'COUNT DOWN',
            style: AppStyles.font15SemiBoldPurple(context),
          ),
        ],
      ),
    );
  }
}
