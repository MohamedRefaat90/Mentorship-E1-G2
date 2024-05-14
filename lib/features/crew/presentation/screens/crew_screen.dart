import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacexx/core/resources/assets.dart';
import 'package:spacexx/core/widgets/custom_error_widget.dart';
import 'package:spacexx/core/widgets/custom_loading_widget.dart';
import 'package:spacexx/features/crew/logic/cubit/crew_cubit.dart';
import 'package:spacexx/features/crew/logic/cubit/crew_state.dart';
import 'package:spacexx/features/crew/presentation/widgets/crew_screen_widgets.dart';

class CrewScreen extends StatefulWidget {
  const CrewScreen({super.key});

  @override
  State<CrewScreen> createState() => _CrewScreenState();
}

class CrewScreenBody extends StatelessWidget {
  const CrewScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CrewCubit, CrewState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loading: () => const Center(
            child: CustomLoadingWidget(),
          ),
          success: (crewList) => CrewGrid(allCrew: crewList),
          error: (error) => const CustomErrorWidget(),
        );
      },
    );
  }
}

class CrewScreenContent extends StatelessWidget {
  const CrewScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const CrewScreenBody();
  }
}

class _CrewScreenState extends State<CrewScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
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
        const CrewScreenContent(),
      ],
    );
  }

  @override
  void initState() {
    context.read<CrewCubit>().getAllCrew();
    super.initState();
  }
}
