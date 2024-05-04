import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_e1_g3/core/widgets/custom_error_widget.dart';
import 'package:mentorship_e1_g3/core/widgets/custom_loading_widget.dart';
import 'package:mentorship_e1_g3/features/rockets/logic/cubit/rocket_cubit.dart';
import 'package:mentorship_e1_g3/features/rockets/logic/cubit/rocket_state.dart';
import 'package:mentorship_e1_g3/features/rockets/data/models/rocket_respons_body.dart';
import 'package:mentorship_e1_g3/features/rockets/ui/widgets/rocket_details_widgets.dart';

class RocketDetailsScreen extends StatefulWidget {
  final String rocketId;

  const RocketDetailsScreen({Key? key, required this.rocketId})
      : super(key: key);

  @override
  _RocketDetailsScreenState createState() => _RocketDetailsScreenState();
}

class _RocketDetailsScreenState extends State<RocketDetailsScreen> {
  late final RocketCubit _rocketCubit;

  @override
  void initState() {
    super.initState();
    _rocketCubit = context.read<RocketCubit>();
    _rocketCubit.fetchRocketDetails(widget.rocketId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rocket Details'),
      ),
      body: BlocBuilder<RocketCubit, RocketState>(
        builder: (context, state) {
          return state.when(
            initial: () => Container(),
            loading: () => const CustomLoadingWidget(),
            success: (rocket) => RocketDetailsWidgets(rocket: rocket),
            error: (errorMSG) => CustomErrorWidget(),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _rocketCubit.close();
    super.dispose();
  }
}
