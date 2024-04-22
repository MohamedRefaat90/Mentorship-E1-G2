import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';

import '../../../core/themes/styles.dart';
import '../widgets/rocket_list_veiw.dart';

class RocketScreen extends StatelessWidget {
  const RocketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: const RocketListVeiw(),
    );
  }
}
