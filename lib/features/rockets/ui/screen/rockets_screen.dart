import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';
import 'package:mentorship_e1_g3/features/rockets/logic/cubit/rocket_cubit.dart';
import 'package:mentorship_e1_g3/features/rockets/logic/cubit/rocket_state.dart';

import '../widgets/rocket_list_veiw.dart';

class RocketScreen extends StatelessWidget {
  const RocketScreen({super.key});

  @override
 

  @override
  Widget build(BuildContext context) {
        context.read<RocketCubit>().emitRocketState();

    return Scaffold(
      // TODO: we discuss to remove it or not so i made it comment
      // appBar: AppBar(
      //   backgroundColor: AppPallete.homeBG,
      //   title: Text(
      //     "Rockets",
      //     style: AppStyles.font10SemiBoldPurple(context),
      //   ),
      //   centerTitle: false,
      //   actions: [
      //     IconButton(
      //       icon: const Icon(Icons.search_outlined),
      //       onPressed: () {},
      //     ),
      //   ],
      // ),
      backgroundColor: AppPallete.homeBG,
      body: BlocBuilder<RocketCubit, RocketState>(
        builder: (context, state) {
          return state.when(
              initial: () => Container(),
              //will  added anthor widget to loading from core after pullrequest accepted
              loading: () => const Text("loading"),
              success: (rocketList) => RocketListVeiw(rocketList: rocketList),
              error: (errorMSG) => const Icon(Icons.warning_rounded,
                  size: 150, color: Colors.amber));
        },
      ),
    );
  }
}
