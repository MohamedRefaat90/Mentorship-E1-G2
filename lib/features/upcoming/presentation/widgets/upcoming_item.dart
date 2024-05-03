import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/extension/num_extension.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';
import 'package:mentorship_e1_g3/core/themes/styles.dart';
import 'package:mentorship_e1_g3/features/home/data/models/upcoming_launches/upcoming_launches_model.dart';

class UpcomingItem extends StatelessWidget {
const UpcomingItem({super.key, required this.launchItem});
final UpcomingLaunches launchItem;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.height,
      width: double.infinity,
      child: Container(
          decoration: BoxDecoration(
           color: AppPalette.homeBG.withOpacity(0.5),
           borderRadius: BorderRadius.circular(20),
           border: Border.all(
            color: AppPalette.whiteColor
           )
        ),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            children: [
               CachedNetworkImage(
                imageUrl:'${launchItem.links!.patch!.small}' ,
                errorWidget:((context, url, error) =>const Icon(Icons.error)) ,
                width: 110,
                height: 110,
              ),
              SizedBox(
                width: 20.height,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('LAUNCH',
                      style: AppStyles.font15SemiBoldPurple(context)),
                  SizedBox(
                    height: 8.height,
                  ),
                  Text('${launchItem.name}',
                      style: AppStyles.font18SemiBoldWhite(context),
                      maxLines:2,
                      overflow:TextOverflow.ellipsis,
                      ),
                  SizedBox(
                    height: 5.height,
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
