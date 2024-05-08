import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacexx/core/themes/styles.dart';
import 'package:spacexx/core/di/dependency_injection.dart';
import 'package:spacexx/core/widgets/custom_error_widget.dart';
import 'package:spacexx/core/widgets/custom_loading_widget.dart';
import 'package:spacexx/features/crew/data/model/crew_model.dart';
import 'package:spacexx/features/crew/logic/cubit/crew_cubit.dart';
import 'package:spacexx/features/crew/logic/cubit/crew_state.dart';
import 'package:spacexx/features/crew/presentation/widgets/crew_details_screen_widgets.dart';

class CrewDetailsScreen extends StatelessWidget {
  final CrewModel crewMember;

  const CrewDetailsScreen({super.key, required this.crewMember});

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
          initial: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loading: () => const Center(
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
