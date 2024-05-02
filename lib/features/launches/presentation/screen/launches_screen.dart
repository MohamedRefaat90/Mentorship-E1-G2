import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_e1_g3/core/di/dependency_injection.dart';
import 'package:mentorship_e1_g3/core/widgets/custom_error_widget.dart';
import 'package:mentorship_e1_g3/core/widgets/custom_loading_widget.dart';
import 'package:mentorship_e1_g3/core/widgets/launch_item.dart';
import 'package:mentorship_e1_g3/features/home/logic/cubit/home_cubit.dart';
import 'package:mentorship_e1_g3/features/home/logic/cubit/home_state.dart';

class LaunchesScreen extends StatefulWidget {
  const LaunchesScreen({super.key});

  @override
  State<LaunchesScreen> createState() => _LaunchesScreenState();
}

class _LaunchesScreenState extends State<LaunchesScreen> {
  @override
  void initState() {
    super.initState();
    getIt.get<HomeCubit>().emitGetLaunches();
  }

  @override
  Widget build(BuildContext context) {
      return BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              var launchesList=getIt.get<HomeCubit>().allLaunches;
              return state.when(
             initial: ()=>Container(),
             loading: ()=>const CustomLoadingWidget(),
             error: (error)=>  const CustomErrorWidget(),
             success: (data)=> GridView.builder(
               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 2,
                 childAspectRatio: 1/1.48
                 ),
               physics: const BouncingScrollPhysics(),
               shrinkWrap: true,
               itemBuilder: (BuildContext context, int index) =>  Padding(
                 padding: const EdgeInsets.all(12.0),
                 child: LaunchItem(
                   launchItem:launchesList[index],
                   ),
               ),
               itemCount:launchesList.length,
             ));
            });
        
        }
  
}
