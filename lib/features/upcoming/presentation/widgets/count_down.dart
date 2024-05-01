import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';
import 'package:slide_countdown/slide_countdown.dart';


class UpcomingCountDown extends StatelessWidget {
  const UpcomingCountDown({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal:20.0),
      child: SlideCountdownSeparated(
            duration: Duration(days: 2),
            padding:EdgeInsets.all(13) ,
            separatorStyle:TextStyle(
              color:AppPallete.whiteColor ,
            ) ,
            
      ),
    );
  }
}