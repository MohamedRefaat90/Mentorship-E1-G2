import 'package:flutter/material.dart';
import '../../../../core/themes/styles.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:mentorship_e1_g3/core/extension/num_extension.dart';
import 'package:mentorship_e1_g3/features/rockets/ui/widgets/status_container.dart';
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
            builder: (context) => RocketDetailsScreen(rocket: rocket),
          ),
        );
      },
      child: SizedBox(
        height: 150.height,
        width: double.infinity,
        child: Card(
          color: AppPalette.homeBG,
          child: Row(
            children: [
              Expanded(
                child: CachedNetworkImage(
                  imageUrl: rocket.flickrImages?[0] ?? "",
                  width: 150.width,
                  height: 150.height,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
              SizedBox(
                width: 20.width,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 12.height,
                  ),
                  Text(
                    rocket.name ?? '',
                    style: AppStyles.font18SemiBoldWhite(context),
                  ),
                  SizedBox(
                    height: 40.height,
                  ),
                  StatusContainer(isActive: rocket.active ?? false),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
