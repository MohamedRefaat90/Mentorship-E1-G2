import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/resources/assets.dart';
import 'package:mentorship_e1_g3/features/rockets/data/models/rocket_respons_body.dart';
import 'package:mentorship_e1_g3/features/rockets/ui/widgets/rocket_details_widgets.dart';

class RocketDetailsScreen extends StatelessWidget {
  final RocketModel rocket;

  const RocketDetailsScreen({Key? key, required this.rocket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(rocket.name ?? 'Rocket Details'),
      ),
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
            child: Opacity(
              opacity: 0.5,
              child: Container(color: Colors.black),
            ),
          ),
          // Rocket Details Widgets
          SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: RocketDetailsWidgets(rocket: rocket),
          ),
        ],
      ),
    );
  }
}
