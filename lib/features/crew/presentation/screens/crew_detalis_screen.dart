import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_e1_g3/core/themes/styles.dart';
import 'package:mentorship_e1_g3/core/di/dependency_injection.dart';
import 'package:mentorship_e1_g3/core/widgets/custom_error_widget.dart';
import 'package:mentorship_e1_g3/core/widgets/custom_loading_widget.dart';
import 'package:mentorship_e1_g3/features/crew/data/model/crew_model.dart';
import 'package:mentorship_e1_g3/features/crew/logic/cubit/crew_cubit.dart';
import 'package:mentorship_e1_g3/features/crew/logic/cubit/crew_state.dart';
import 'package:mentorship_e1_g3/features/crew/presentation/widgets/crew_details_screen_widgets.dart';

class CrewDetailsScreen extends StatelessWidget {
  final CrewModel crewMember;

  const CrewDetailsScreen({Key? key, required this.crewMember})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          crewMember.name ?? 'Unknown',
          style: AppStyles.font24BoldWhite(context),
        ),
      ),
      body: BlocProvider(
        create: (context) =>
            getIt<CrewCubit>()..getAllCrew(), // Utilizing DI here
        child: CrewDetailsScreenBody(crewMember: crewMember),
      ),
    );
  }
}

class CrewDetailsScreenBody extends StatelessWidget {
  final CrewModel crewMember;

  const CrewDetailsScreenBody({super.key, required this.crewMember});

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
          success: (crewList) {
            // Find the crew member from the list using crewMember.id
            final foundCrewMember = crewList.firstWhere(
              (element) => element.id == crewMember.id,
              orElse: () => crewMember,
            );

            // Return the CrewDetailsBody widget with the found crew member
            return CrewDetailsBody(crewMember: foundCrewMember);
          },
          error: (error) => const CustomErrorWidget(),
        );
      },
    );
  }
}
