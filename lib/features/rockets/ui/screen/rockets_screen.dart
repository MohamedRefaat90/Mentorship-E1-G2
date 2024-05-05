import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/core/di/dependency_injection.dart';
import 'package:spacex/core/widgets/custom_error_widget.dart';
import 'package:spacex/core/widgets/custom_loading_widget.dart';
import 'package:spacex/features/home/logic/cubit/home_cubit.dart';
import 'package:spacex/features/home/logic/cubit/home_state.dart';
import 'package:spacex/features/rockets/logic/cubit/rocket_cubit.dart';
import 'package:spacex/features/rockets/logic/cubit/rocket_state.dart';

import '../widgets/rocket_list_veiw.dart';

class RocketScreen extends StatefulWidget {
  const RocketScreen({super.key});

  @override
  State<RocketScreen> createState() => _RocketScreenState();
}

class _RocketScreenState extends State<RocketScreen> {
  @override
  void initState() {
    context.read<HomeCubit>().emitRocketState();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state.when(
            initial: () => Container(),
            loading: () => const CustomLoadingWidget(),
            success: (rocketList) => RocketListVeiw(rocketList: rocketList),
            error: (errorMSG) => const CustomErrorWidget());
      },
    );
  }
}
