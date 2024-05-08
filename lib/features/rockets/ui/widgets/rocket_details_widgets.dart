import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:spacexx/core/themes/styles.dart';
import 'package:spacexx/features/rockets/data/models/rocket_respons_body.dart';

class RocketDetailsWidgets extends StatelessWidget {
  final RocketModel rocket;

  const RocketDetailsWidgets({super.key, required this.rocket});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 200,
          child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 16 / 9,
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: false,
            ),
            items: rocket.flickrImages?.map((image) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: NetworkImage(image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  );
                }).toList() ??
                [],
          ),
        ),
        const SizedBox(height: 20.0),
        Text(
          'Description:',
          style: AppStyles.font24BoldPurple(context),
        ),
        const SizedBox(height: 10.0),
        Text(
          rocket.description ?? 'No description available',
          style: AppStyles.font15MediumWhite(context),
        ),
        const SizedBox(height: 20.0),
        Text(
          'Height: ${rocket.height?.meters} meters / ${rocket.height?.feet} feet',
          style: AppStyles.font18SemiBoldPurple(context),
        ),
        const SizedBox(height: 10.0),
        Text(
          'Diameter: ${rocket.diameter?.meters} meters / ${rocket.diameter?.feet} feet',
          style: AppStyles.font18SemiBoldWhite(context),
        ),
        const SizedBox(height: 10.0),
        Text(
          'Mass: ${rocket.mass?.kg} kg / ${rocket.mass?.lb} lb',
          style: AppStyles.font18SemiBoldWhite(context),
        ),
      ],
    );
  }
}
