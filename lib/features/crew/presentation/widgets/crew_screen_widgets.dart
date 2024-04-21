import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/features/crew/data/model/temp_model_to_test_ui.dart';

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage:
                NetworkImage(crewMember.image ?? ''), // Handle null image URL
            radius: 40.0,
          ),
          const SizedBox(height: 8.0),
          Text(
            crewMember.name ?? 'Unknown', // Handle null name
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            crewMember.agency ?? 'Unknown', // Handle null agency
            style: const TextStyle(fontSize: 12.0, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
