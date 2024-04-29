import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_e1_g3/core/extension/num_extension.dart';
import 'package:mentorship_e1_g3/core/themes/styles.dart';
import 'package:mentorship_e1_g3/core/widgets/launch_item.dart';
import 'package:mentorship_e1_g3/features/home/logic/cubit/home_cubit.dart';
import 'package:mentorship_e1_g3/features/upcoming/presentation/widgets/upcoming_launch_details.dart';

import '../widgets/count_down.dart';

class UpcomingScreen extends StatefulWidget {
  const UpcomingScreen({super.key});

  @override
  State<UpcomingScreen> createState() => _UpcomingScreenState();
}

class _UpcomingScreenState extends State<UpcomingScreen> {
   @override
   void initState() {
    super.initState();
    BlocProvider.of<HomeCubit>(context).emitGetUpcomingLaunches();
  }
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Upcoming',
          style:AppStyles.font24BoldWhite(context)),
           SizedBox(height: 23.h,),
        const LaunchItem(),
         SizedBox(height: 20.h,),
        const UpComingLaunchDetails(),
       const UpcomingCountDown()
        ],
      ),
    );
  }
}