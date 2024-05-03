import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mentorship_e1_g3/core/extension/num_extension.dart';

import '../../../core/helpers/functions/customLottieDecoder.dart';
import '../models/item.dart';

class ItemCard extends StatelessWidget {
  final Item item;
  const ItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        SizedBox(height: 60.height),
        SizedBox(
          height: screenHeight * 0.50,
          width: screenWidth,
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Lottie.asset(item.lottie,
                fit: BoxFit.cover, decoder: customDecoder),
          ),
        ),
        const Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenHeight * 0.10,
                child: Text(
                  item.title,
                  textScaler: const TextScaler.linear(2.3),
                  maxLines: 2,
                  style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      height: 1.2,
                      letterSpacing: 1.5,
                      wordSpacing: 7),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              SizedBox(
                  height: screenHeight * 0.12,
                  child: Text(
                    item.description,
                    textScaler: const TextScaler.linear(1),
                    style: const TextStyle(
                      height: 1.2,
                      wordSpacing: 5,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
