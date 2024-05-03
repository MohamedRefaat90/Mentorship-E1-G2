import '../widgets/count_down.dart';
import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/themes/styles.dart';
import 'package:mentorship_e1_g3/core/widgets/launch_item.dart';
import 'package:mentorship_e1_g3/core/extension/num_extension.dart';
import 'package:mentorship_e1_g3/features/upcoming/presentation/widgets/upcoming_launch_details.dart';


class UpcomingScreen extends StatelessWidget {
  const UpcomingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Upcoming',
          style:AppStyles.font24BoldWhite(context)),
           SizedBox(height: 23.height,),
        const LaunchItem(),
         SizedBox(height: 20.height,),
        const UpComingLaunchDetails(),
       const UpcomingCountDown()
        ],
      ),
    );
  }
}