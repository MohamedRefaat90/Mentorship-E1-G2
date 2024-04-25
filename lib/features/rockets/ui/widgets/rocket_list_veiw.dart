import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_e1_g3/features/rockets/logic/cubit/rocket_cubit.dart';
import 'package:mentorship_e1_g3/features/rockets/ui/widgets/rocket_card.dart';

class RocketListVeiw extends StatelessWidget {
  const RocketListVeiw({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
             physics: const BouncingScrollPhysics(),

      itemBuilder: (BuildContext context, int index) {
                      context.read<RocketCubit>().emitRocketState();

        return const Padding(
          padding: EdgeInsets.all(10.0),
          child: RocketCard(),
        );
      },
    );
  }
}