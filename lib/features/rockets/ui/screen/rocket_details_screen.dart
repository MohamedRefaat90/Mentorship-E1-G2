import 'package:flutter/material.dart';
import 'package:spacex/core/resources/assets.dart';
import 'package:spacex/features/rockets/data/models/rocket_respons_body.dart';
import 'package:spacex/features/rockets/ui/widgets/rocket_details_widgets.dart';

class RocketDetailsScreen extends StatelessWidget {
  final RocketModel rocket;

  const RocketDetailsScreen({super.key, required this.rocket});

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
            decoration: const BoxDecoration(
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
            padding: const EdgeInsets.all(16.0),
            child: RocketDetailsWidgets(rocket: rocket),
          ),
        ],
      ),
    );
  }
}
