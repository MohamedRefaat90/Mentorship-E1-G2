import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/themes/styles.dart';
import 'package:mentorship_e1_g3/core/extension/num_extension.dart';

class UpComingLaunchDetails extends StatelessWidget {
  const UpComingLaunchDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(22.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text('LAUNCH DATE',
           style: AppStyles.font10SemiBoldPurple(context),),
           SizedBox(height: 12.height,),
            Text('Thu Oct 17, 2020 at 5:30:00 am',
           style: AppStyles.font16SemiBoldWhite(context),),
           SizedBox(height: 28.height,),
            Text('LAUNCH SITE',
           style: AppStyles.font10SemiBoldPurple(context),),
           SizedBox(height: 12.height,),
           Text('Cape Canaveral Air Force Station Space Launch Complex 40',
           style: AppStyles.font16SemiBoldWhite(context),),
           SizedBox(height: 28.height,),
           Text('COUNT DOWN',
           style: AppStyles.font10SemiBoldPurple(context),),
        ],
      ),
    );
  }
}