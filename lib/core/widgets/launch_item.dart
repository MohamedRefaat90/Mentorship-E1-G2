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
      height: 430.h,
      width: 150.w,
      child: Container(
        decoration: BoxDecoration(
           color: AppPallete.homeBG.withOpacity(0.7),
           borderRadius: BorderRadius.circular(20)
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               CachedNetworkImage(
                imageUrl:'${launchItem.links!.patch!.small}' ,
                errorWidget:((context, url, error) =>const Icon(Icons.error)) ,
                width: 150,
                height: 100,
              ),
              SizedBox(
                height: 5.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('LAUNCH',
                      style: AppStyles.font15SemiBoldPurple(context)),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text('${launchItem.name}',
                      style: AppStyles.font18SemiBoldWhite(context),
                      maxLines:2,
                      overflow:TextOverflow.ellipsis,
                      ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text('${launchItem.id}',
                      style: AppStyles.font15MediumWhite(context)),
                 
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
