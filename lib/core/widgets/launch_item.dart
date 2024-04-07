import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/extension/num_extension.dart';
import 'package:mentorship_e1_g3/core/resources/assets.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';
import 'package:mentorship_e1_g3/core/themes/styles.dart';

class LaunchItem extends StatelessWidget {
  const LaunchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:150.h,
      width:double.infinity,
      child:  Card(
        elevation: 1,
        color:AppPallete.homeBG,
        child:Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              const Image(
                image:AssetImage(Assets.rocket),
                width:100,
                height:100,
              ),
                SizedBox(
                    width: 20.h,
                  ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('LAUNCH',
                  style:AppStyles.font10SemiBoldPurple(context)),
                   SizedBox(
                    height: 8.h,
                  ),
                   Text('Starlink 2',
                  style:AppStyles.font16SemiBoldWhite(context)),
                    SizedBox(
                    height: 5.h,
                  ),
                   Text('CCAES SLC 40',
                  style:AppStyles.font12MediumWhite(context)),
                    SizedBox(
                    height: 5.h,
                  ),
                   Text('16-10-2020',
                  style:AppStyles.font12MediumWhite(context)),
                
                ],
              ),
            ],
          ),
        ) ,
      ),
    );
  }
}