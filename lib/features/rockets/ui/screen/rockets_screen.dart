import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_e1_g3/core/di/dependency_injection.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';
import 'package:mentorship_e1_g3/features/rockets/logic/cubit/rocket_cubit.dart';
import 'package:mentorship_e1_g3/features/rockets/logic/cubit/rocket_state.dart';

import '../../../../core/themes/styles.dart';
import '../widgets/rocket_list_veiw.dart';

class RocketScreen extends StatelessWidget {
  const RocketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RocketCubit(getIt())..emitRocketState(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppPallete.homeBG,
          title: Text(
            "Rockets",
            style: AppStyles.font10SemiBoldPurple(context),
          ),
          centerTitle: false,
          actions: [
            IconButton(
              icon: const Icon(Icons.search_outlined),
              onPressed: () {},
            ),
          ],
        ),
        backgroundColor: AppPallete.homeBG,
        body: BlocBuilder<RocketCubit, RocketState>(
          builder: (context, state) {
            return state.when(
                initial: () => const SizedBox(
                      child: CircularProgressIndicator(),
                    ),
                loading: () => const CircularProgressIndicator(),
                success: (rocketList) => RocketListVeiw(rocketList: rocketList),
                error: (errorMSG) => const Icon(Icons.warning_rounded,
                    size: 150, color: Colors.amber));
          },
        ),
      ),
    );
  }
}
