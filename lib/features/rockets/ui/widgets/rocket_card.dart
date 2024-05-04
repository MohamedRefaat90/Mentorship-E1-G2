import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:mentorship_e1_g3/features/rockets/data/models/rocket_respons_body.dart';
import 'package:mentorship_e1_g3/features/rockets/ui/screen/rocket_details_screen.dart';

class RocketCard extends StatelessWidget {
  const RocketCard({Key? key, required this.rocket}) : super(key: key);

  final RocketModel rocket;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                RocketDetailsScreen(rocketId: rocket.id ?? ''),
          ),
        );
      },
      child: SizedBox(
        height: 150,
        width: double.infinity,
        child: Card(
          child: Row(
            children: [
              Expanded(
                child: CachedNetworkImage(
                  imageUrl: rocket.flickrImages?[0] ?? "",
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    rocket.name ?? '',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  // StatusContainer(isActive: rocket.active ?? false),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
