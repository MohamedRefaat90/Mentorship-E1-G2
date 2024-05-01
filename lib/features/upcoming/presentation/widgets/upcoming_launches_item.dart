// import 'package:flutter/material.dart';
// import 'package:mentorship_e1_g3/core/extension/num_extension.dart';
// import 'package:mentorship_e1_g3/features/home/data/models/upcoming_launches/upcoming_launches_model.dart';
// import 'package:mentorship_e1_g3/features/upcoming/presentation/widgets/count_down.dart';
// import 'package:mentorship_e1_g3/features/upcoming/presentation/widgets/upcoming_item.dart';

// import 'upcoming_launch_details.dart';

// class UpcomingLaunchesItem extends StatelessWidget {
//   const UpcomingLaunchesItem({super.key,required this.launchItem});
//   final UpcomingLaunches launchItem;

//   @override
//   Widget build(BuildContext context) {
//     return   Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//       UpcomingItem(
//         launchItem: launchItem,
//         ),
//       SizedBox(height: 20.h,),
//       const UpComingLaunchDetails(),
//      const UpcomingCountDown()
//       ],
//     );
//   }
// }