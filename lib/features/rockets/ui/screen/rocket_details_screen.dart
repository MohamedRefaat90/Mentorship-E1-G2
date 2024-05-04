import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mentorship_e1_g3/core/themes/styles.dart';
import 'package:mentorship_e1_g3/features/rockets/data/models/rocket_respons_body.dart';

class RocketDetailsScreen extends StatelessWidget {
  final RocketModel rocket;

  const RocketDetailsScreen({Key? key, required this.rocket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(rocket.name ?? 'Rocket Details'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 16 / 9,
                  enlargeCenterPage: true,
                  autoPlay: true, // Auto play set to true
                  autoPlayInterval: Duration(seconds: 3), // Auto play interval set to 3 seconds
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: false,
                ),
                items: rocket.flickrImages?.map((image) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
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
                }).toList() ?? [],
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Description:',
              style: AppStyles.font24BoldWhite(context),
            ),
            SizedBox(height: 10.0),
            Text(
              rocket.description ?? 'No description available',
              style: AppStyles.font15MediumGrey(context),
            ),
            SizedBox(height: 20.0),
            Text(
              'Height: ${rocket.height?.meters} meters / ${rocket.height?.feet} feet',
              style: AppStyles.font18SemiBoldWhite(context),
            ),
            SizedBox(height: 10.0),
            Text(
              'Diameter: ${rocket.diameter?.meters} meters / ${rocket.diameter?.feet} feet',
              style: AppStyles.font18SemiBoldWhite(context),
            ),
            SizedBox(height: 10.0),
            Text(
              'Mass: ${rocket.mass?.kg} kg / ${rocket.mass?.lb} lb',
              style: AppStyles.font18SemiBoldWhite(context),
            ),
            SizedBox(height: 10.0),
            Text(
              'First Stage Engines: ${rocket.firstStage?.engines}',
              style: AppStyles.font18SemiBoldWhite(context),
            ),
            SizedBox(height: 10.0),
            Text(
              'Second Stage Engines: ${rocket.secondStage?.engines}',
              style: AppStyles.font18SemiBoldWhite(context),
            ),
            // Add more details as needed
          ],
        ),
      ),
    );
  }
}
