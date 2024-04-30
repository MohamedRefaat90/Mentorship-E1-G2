import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/extension/num_extension.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';
import 'package:mentorship_e1_g3/core/themes/styles.dart';
import 'package:mentorship_e1_g3/features/home/data/models/launches/launches_model.dart';

class LaunchItem extends StatelessWidget {
  const LaunchItem({super.key, required this.launchItem});
final Launches launchItem;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      width: double.infinity,
      child: Card(
        elevation: 1,
        color: AppPallete.homeBG,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
               CachedNetworkImage(
                imageUrl:'${launchItem.links!.patch!.small}' ,
                errorWidget:((context, url, error) =>const Icon(Icons.error)) ,
                width: 100,
                height: 100,
              ),
              SizedBox(
                width: 20.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('LAUNCH',
                      style: AppStyles.font10SemiBoldPurple(context)),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text('${launchItem.name}',
                      style: AppStyles.font16SemiBoldWhite(context),
                      maxLines:2,
                      overflow:TextOverflow.ellipsis,
                      ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text('${launchItem.id}',
                      style: AppStyles.font12MediumWhite(context)),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text('${launchItem.staticFireDateUtc}',
                      style: AppStyles.font12MediumWhite(context),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
