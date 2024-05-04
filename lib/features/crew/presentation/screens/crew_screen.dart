import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_e1_g3/core/themes/styles.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';
import 'package:mentorship_e1_g3/core/di/dependency_injection.dart';
import 'package:mentorship_e1_g3/core/widgets/custom_error_widget.dart';
import 'package:mentorship_e1_g3/core/widgets/custom_loading_widget.dart';
import 'package:mentorship_e1_g3/features/crew/data/model/crew_model.dart';
import 'package:mentorship_e1_g3/features/crew/logic/cubit/crew_cubit.dart';
import 'package:mentorship_e1_g3/features/crew/logic/cubit/crew_state.dart';
import 'package:mentorship_e1_g3/features/crew/presentation/widgets/crew_screen_widgets.dart';

class CrewScreen extends StatelessWidget {
  const CrewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPalette.homeBG,
      appBar: AppBar(
        backgroundColor: AppPalette.homeBG,
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
        return state.when(
          initial: () => Center(
            child: CircularProgressIndicator(),
          ),
          loading: () => Center(
            child: CustomLoadingWidget(),
          ),
          success: (crewList) => CrewGrid(allCrew: crewList),
          error: (error) => const CustomErrorWidget(),
        );
      },
    );
  }
}
