import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacexx/core/widgets/app_connectivity.dart';
import 'package:spacexx/core/widgets/custom_error_widget.dart';
import 'package:spacexx/core/widgets/custom_loading_widget.dart';
import 'package:spacexx/features/home/logic/cubit/home_cubit.dart';
import 'package:spacexx/features/home/logic/cubit/home_state.dart';

import '../widgets/rocket_list_veiw.dart';

class RocketScreen extends StatefulWidget {
  const RocketScreen({super.key});

  @override
  State<RocketScreen> createState() => _RocketScreenState();
}

class _RocketScreenState extends State<RocketScreen> {
  @override
  Widget build(BuildContext context) {
    return AppConnectivity(
      fetchData: (context) {
        context.read<HomeCubit>().emitRocketState();
      },
  child: BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state.when(
            initial: () => Container(),
            refreshBottomNavbar: () => Container(),
            loading: () => const CustomLoadingWidget(),
            success: (rocketList) => RocketListVeiw(rocketList: rocketList),
            error: (errorMSG) => const CustomErrorWidget());
      },
    ));
  }

  @override
  void initState() {
    context.read<HomeCubit>().emitRocketState();
    super.initState();
  }
}
