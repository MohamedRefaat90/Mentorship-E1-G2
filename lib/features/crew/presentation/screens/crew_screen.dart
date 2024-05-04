import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/core/di/dependency_injection.dart';
import 'package:spacex/core/resources/assets.dart';
import 'package:spacex/core/themes/styles.dart';
import 'package:spacex/core/widgets/custom_error_widget.dart';
import 'package:spacex/core/widgets/custom_loading_widget.dart';
import 'package:spacex/features/crew/data/model/crew_model.dart';
import 'package:spacex/features/crew/logic/cubit/crew_cubit.dart';
import 'package:spacex/features/crew/logic/cubit/crew_state.dart';
import 'package:spacex/features/crew/presentation/widgets/crew_screen_widgets.dart';

class CrewScreen extends StatelessWidget {
  const CrewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
          CrewScreenContent(),
        ],
      ),
    );
  }
}

class CrewScreenContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Crew Members',
          style: AppStyles.font24BoldWhite(context),
        ),
      ),
      body: BlocProvider(
        create: (context) => getIt<CrewCubit>()..getAllCrew(),
        child: CrewScreenBody(),
      ),
    );
  }
}

class CrewScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CrewCubit, CrewState<List<CrewModel>>>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: state.when(
            initial: () => Center(
              child: CircularProgressIndicator(),
            ),
            loading: () => Center(
              child: CustomLoadingWidget(),
            ),
            success: (crewList) => CrewGrid(allCrew: crewList),
            error: (error) => const CustomErrorWidget(),
          ),
        );
      },
    );
  }
}
