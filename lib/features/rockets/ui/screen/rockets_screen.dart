import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/core/di/dependency_injection.dart';
import 'package:spacex/core/widgets/custom_error_widget.dart';
import 'package:spacex/core/widgets/custom_loading_widget.dart';
import 'package:spacex/features/rockets/logic/cubit/rocket_cubit.dart';
import 'package:spacex/features/rockets/logic/cubit/rocket_state.dart';

import '../../../../core/resources/assets.dart';
import '../widgets/rocket_list_veiw.dart';

class RocketScreen extends StatelessWidget {
  const RocketScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RocketCubit>()..emitRocketState(),
      child: Scaffold(
        body:  Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: 0.5,
              child: Image.asset(
                Assets.backgroundImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
        BlocBuilder<RocketCubit, RocketState>(
          builder: (context, state) {
            return state.when(
                initial: () => Container(),
                loading: () => const CustomLoadingWidget(),
                success: (rocketList) => RocketListVeiw(rocketList: rocketList),
                error: (errorMSG) => const CustomErrorWidget());
          },
        ),
     ] ),
    ));
  }
}
