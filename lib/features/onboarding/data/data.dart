import 'package:flutter/material.dart';
import 'package:spacex/core/resources/assets.dart';

import '../models/item.dart';

const String desc =
    "Thee followed but to lost heart thy raven my lining. Ah in you chamber once shall distinctly, smiling came this.";

List<Color> backgroundColors = const [
  Color.fromARGB(255, 208, 42, 169),
  Color.fromARGB(255, 21, 21, 21),
  Color.fromARGB(255, 200, 33, 218),
  Color.fromARGB(255, 134, 145, 178)
];

List<Item> items = [
  Item(
      title: 'Explore the Cosmos',
      lottie: lotties[0],
      description:
          "Discover upcoming launches, past missions, and fascinating rocket details"),
  Item(
      title: 'The Power of Rockets',
      lottie: lotties[1],
      description:
          "Learn about the incredible rockets used by SpaceX, from their capabilities to their upcoming missions."),
  Item(
      title: 'Meet SpaceX Crew Members.',
      lottie: lotties[2],
      description:
          "We're a team of passionate engineers and dreamers dedicated to making humanity a multi-planetary species."),
];

List<String> lotties = [
  Assets.onBoardingAstronaut,
  Assets.onBoardingRocketFlying,
  Assets.onBoardingHappySpaceman
];
