import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_e1_g3/core/extension/num_extension.dart';
import 'package:mentorship_e1_g3/core/themes/styles.dart';
import 'package:mentorship_e1_g3/core/widgets/custom_error_widget.dart';
import 'package:mentorship_e1_g3/core/widgets/custom_loading_widget.dart';
import 'package:mentorship_e1_g3/features/home/logic/cubit/home_cubit.dart';
import 'package:mentorship_e1_g3/features/home/logic/cubit/home_state.dart';
import 'package:mentorship_e1_g3/features/upcoming/presentation/widgets/count_down.dart';
import 'package:mentorship_e1_g3/features/upcoming/presentation/widgets/upcoming_launch_details.dart';
import '../widgets/upcoming_item.dart';

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
     return Padding(
       padding: const EdgeInsets.all(12.0),
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Upcoming',
            style:AppStyles.font24BoldWhite(context)),
         SizedBox(height: 23.h,), 
         BlocBuilder<HomeCubit, HomeState>(
         builder: (context, state) {   
         return state.when(
             initial: ()=>Container(),
             loading: ()=>const CustomLoadingWidget(),
             error: (error)=>  const CustomErrorWidget(),
             success: (data)=> Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             UpcomingItem(
               launchItem:BlocProvider.of<HomeCubit>(context).allUpcomingLaunches[1],
                ),
            SizedBox(height: 20.h,),
            const UpComingLaunchDetails(),
            const UpcomingCountDown()
      ],
    ));
          }
          )
        ],
           ),
     ); 
  }
}