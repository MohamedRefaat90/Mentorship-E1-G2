import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/features/crew/data/repo/crew_repository.dart';
import 'package:mentorship_e1_g3/features/crew/data/model/temp_model_to_test_ui.dart';
import 'package:mentorship_e1_g3/features/crew/data/web_services/crew_web_services.dart';
import 'package:mentorship_e1_g3/features/crew/presentation/widgets/crew_screen_widgets.dart';

class CrewScreen extends StatefulWidget {
  const CrewScreen({Key? key}) : super(key: key);

  @override
  State<CrewScreen> createState() => _CrewScreenState();
}

class _CrewScreenState extends State<CrewScreen> {
  late List<CrewModel> allCrew = [];

  @override
  void initState() {
    super.initState();
    loadCrewData();
  }

  Future<void> loadCrewData() async {
    final repository = CrewRepository(CrewsWebServices());
    final crew = await repository.getAllCharacters();
    setState(() {
      allCrew = crew.cast<CrewModel>();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crew Members'),
      ),
      body: CrewGrid(allCrew: allCrew),
    );
  }
}
