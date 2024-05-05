import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:spacex/core/extension/num_extension.dart';
import 'package:spacex/core/routing/app_routing.dart';
import 'package:spacex/core/themes/app_pallete.dart';
import 'package:spacex/features/rockets/data/models/rocket_respons_body.dart';
import 'package:spacex/features/rockets/ui/widgets/status_container.dart';

import '../../../../core/themes/styles.dart';
import '../screen/rocket_details_screen.dart';

class RocketCard extends StatelessWidget {
  final RocketModel rocket;

  const RocketCard({super.key, required this.rocket});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        push(RocketDetailsScreen(rocket: rocket));
      },
      child: SizedBox(
        height: 180.height,
        width: 200.width,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.width),
          decoration: BoxDecoration(
            color: AppPalette.homeBG.withOpacity(0.7),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30.height,
                  ),
                  Text(
                    rocket.name!,
                    style: AppStyles.font18SemiBoldWhite(context),
                  ),
                  SizedBox(
                    height: 30.height,
                  ),
                  StatusContainer(isActive: rocket.active!),
                ],
              ),
              SizedBox(
                width: 20.width,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: CachedNetworkImageProvider(
                      rocket.flickrImages?[0] ?? "",
                    ),
                    width: 100.width,
                    height: 150.height,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
