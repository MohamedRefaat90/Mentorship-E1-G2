import 'package:flutter/material.dart';
import 'package:spacex/features/rockets/data/models/rocket_respons_body.dart';
import 'package:spacex/features/rockets/ui/widgets/rocket_card.dart';

class RocketListVeiw extends StatelessWidget {
  final List<RocketModel> rocketList;

  const RocketListVeiw({super.key, required this.rocketList});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: rocketList.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: RocketCard(rocket: rocketList[index]),
        );
      },
    );
  }
}
