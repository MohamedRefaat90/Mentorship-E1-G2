// Import the correct web services class

import 'package:mentorship_e1_g3/features/crew/data/model/temp_model_to_test_ui.dart';
import 'package:mentorship_e1_g3/features/crew/data/web_services/crew_web_services.dart';

class CharactersRepository {
  final CrewsWebServices crewsWebServices; // Update to CrewsWebServices

  CharactersRepository(this.crewsWebServices); // Update constructor parameter

  Future<List<dynamic>> getAllCharacters() async {
    final crew = await crewsWebServices.getAllCrew(); // Use getAllCrew instead
    return crew
        .map((crewMember) => CrewModel.fromJson(crewMember))
        .toList(); // Update variable names accordingly
  }
}
