import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';
import 'package:mentorship_e1_g3/core/themes/styles.dart';

class CountDownCard extends StatelessWidget {
  const CountDownCard({super.key,required this.time});
 final String time;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:57,
      height:66,
      child:Card(
        elevation: 1,
        color: AppPallete.homeBG,
        child:Center(
          child: Text(time,
          style:AppStyles.font24BoldWhite(context)),
        )
      )
    );
    }}