import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/themes/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:mentorship_e1_g3/features/crew/data/model/temp_model_to_test_ui.dart';
import 'package:mentorship_e1_g3/features/crew/presentation/screens/crew_detalis_screen.dart';

class CrewGrid extends StatelessWidget {
  final List<CrewModel> allCrew;

  const CrewGrid({Key? key, required this.allCrew}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Change this value according to your needs
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemCount: allCrew.length,
      itemBuilder: (BuildContext context, int index) {
        return CrewCard(crewMember: allCrew[index]);
      },
    );
  }
}

class CrewCard extends StatelessWidget {
  final CrewModel crewMember;

  const CrewCard({Key? key, required this.crewMember}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CrewDetailsScreen(crewMember: crewMember),
            ),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: crewMember.id!, // Unique tag for each crew member
              child: CircleAvatar(
                backgroundImage:
                    CachedNetworkImageProvider(crewMember.image ?? ''),
                radius: 40.0,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              crewMember.name ?? 'Unknown',
              style: AppStyles.font12MediumWhite(context),
            ),
            Text(
              crewMember.agency ?? 'Unknown',
              style: AppStyles.font12MediumGrey(context),
            ),
          ],
        ),
      ),
    );
  }
}
