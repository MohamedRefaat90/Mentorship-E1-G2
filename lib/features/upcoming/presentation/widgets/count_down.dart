import 'package:flutter/material.dart';
import 'package:slide_countdown/slide_countdown.dart';
import 'package:spacexx/core/themes/styles.dart';

class UpcomingCountDown extends StatelessWidget {
  const UpcomingCountDown({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime targetDate = DateTime(2024, 5, 29); 
    Duration duration = targetDate.difference(DateTime.now());

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SlideCountdownSeparated(
        duration: duration,
        padding: const EdgeInsets.all(13),
        style: AppStyles.font18SemiBoldWhite(context),
        separatorStyle: AppStyles.font18SemiBoldWhite(context),
      ),
    );
  }
}
