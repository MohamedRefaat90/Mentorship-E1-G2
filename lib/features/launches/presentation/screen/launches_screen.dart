import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_e1_g3/core/themes/styles.dart';
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
    BlocProvider.of<HomeCubit>(context).emitGetLaunches();
  }

  @override
  Widget build(BuildContext context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
       children: [
        Padding(
          padding:const EdgeInsets.only(left:20.0,top: 10),
          child: Text('Launches',
               style:AppStyles.font24BoldWhite(context)
            ),
        ),
         BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              var launchesList=BlocProvider.of<HomeCubit>(context).allLaunches;
              return state.when(
             initial: ()=>Container(),
             loading: ()=>const CustomLoadingWidget(),
             error: (error)=>  const CustomErrorWidget(),
             success: (data)=> Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) =>  Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: LaunchItem(
                    launchItem:launchesList[index],
                    ),
                ),
                itemCount:launchesList.length,
              ),
           ));
            })
          ],
        );
        }
  
}
