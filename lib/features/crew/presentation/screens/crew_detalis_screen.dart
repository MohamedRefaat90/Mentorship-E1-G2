import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/themes/styles.dart';
import 'package:mentorship_e1_g3/features/crew/data/model/crew_model.dart';
import 'package:mentorship_e1_g3/features/crew/presentation/widgets/crew_details_screen_widgets.dart';

class CrewDetailsScreen extends StatelessWidget {
  final CrewModel crewMember;

  const CrewDetailsScreen({Key? key, required this.crewMember})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          crewMember.name ?? 'Unknown',
          style: AppStyles.font24BoldWhite(context),
        ),
      ),
      body: CrewDetailsBody(crewMember: crewMember),
    );
  }
}
