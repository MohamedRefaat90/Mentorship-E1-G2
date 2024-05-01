import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_e1_g3/core/widgets/launch_item.dart';
import 'package:mentorship_e1_g3/features/home/logic/cubit/home_cubit.dart';
import 'package:mentorship_e1_g3/features/home/logic/cubit/home_state.dart';
import '../widgets/custom_launch_app_bar.dart';

class LaunchesScreen extends StatefulWidget {
  const LaunchesScreen({super.key});

  @override
  State<LaunchesScreen> createState() => _LaunchesScreenState();
}

class _LaunchesScreenState extends State<LaunchesScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<HomeCubit>(context).emitGetLaunches();
  }

  @override
  Widget build(BuildContext context) {
      return Column(
       children: [
        const CustomLaunchAppBar(),
         BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              var launches= BlocProvider.of<HomeCubit>(context).allLaunches;
              return Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) =>  Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: LaunchItem(
                    launchItem: launches[index],
                    ),
                ),
                itemCount: launches.length,
              ),
           );
            })
          ],
        );
        }
  
}
