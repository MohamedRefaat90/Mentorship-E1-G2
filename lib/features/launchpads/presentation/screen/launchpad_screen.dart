import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacexx/core/widgets/custom_error_widget.dart';
import 'package:spacexx/core/widgets/custom_loading_widget.dart';
import 'package:spacexx/features/launchpads/cubit/launchpad_cubit.dart';
import 'package:spacexx/features/launchpads/cubit/launchpad_state.dart';
import '../widgets/launchpads_gridview.dart';

class LaunchpadsScreen extends StatefulWidget {
  const LaunchpadsScreen({super.key});

  @override
  State<LaunchpadsScreen> createState() => _LaunchpadsScreenState();
}

class _LaunchpadsScreenState extends State<LaunchpadsScreen> {
  @override
  void initState() {
    context.read<LaunchpadCubit>().emitLaunchpadState();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LaunchpadCubit, LaunchpadState>(
        builder: (context, state) => state.when(
            initial: () => const SizedBox(),
            loading: () => const CustomLoadingWidget(),
            success: (launchpadsList) =>
                DragonsGridView(launchpadsList: launchpadsList),
            error: (error) => const CustomErrorWidget()));
  }
}
