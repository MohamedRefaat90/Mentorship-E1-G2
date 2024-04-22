import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/features/presentation/widgets/rocket_card.dart';

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
        return const Padding(
          padding: EdgeInsets.all(10.0),
          child: RocketCard(),
        );
      },
    );
  }
}