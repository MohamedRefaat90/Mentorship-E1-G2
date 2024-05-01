import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/themes/styles.dart';
import 'package:slide_countdown/slide_countdown.dart';


class UpcomingCountDown extends StatelessWidget {
  const UpcomingCountDown({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal:20.0),
      child: SlideCountdownSeparated(
            duration: const Duration(days: 2),
            padding:const EdgeInsets.all(13) ,
            style:AppStyles.font18SemiBoldWhite(context),
            separatorStyle:AppStyles.font18SemiBoldWhite(context)
      ),
    );
  }
}