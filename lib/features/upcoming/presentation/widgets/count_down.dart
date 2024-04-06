import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/themes/styles.dart';

import 'count_down_card.dart';

class UpcomingCountDown extends StatelessWidget {
  const UpcomingCountDown({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal:20.0),
      child: Row(
        children: [
          const CountDownCard(time:'01',),
          Text(':',
          style:AppStyles.font24BoldWhite(context)),
          const CountDownCard(time:'30'),
           Text(':',
           style:AppStyles.font24BoldWhite(context)),
          const CountDownCard(time:'00')
        ],
      ),
    );
  }
}