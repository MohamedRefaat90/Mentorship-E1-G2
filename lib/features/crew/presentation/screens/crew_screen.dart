import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';
import 'package:mentorship_e1_g3/core/themes/styles.dart';
import 'package:mentorship_e1_g3/features/crew/data/model/temp_model_to_test_ui.dart';
import 'package:mentorship_e1_g3/features/crew/data/repository/crew_repository.dart';
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPalette.homeBG,
      appBar: AppBar(
        backgroundColor: AppPalette.homeBG,
        title: Text(
          'Crew Members',
          style: AppStyles.font24BoldWhite(context),
        ),
      ),
      body: CrewGrid(allCrew: allCrew),
    );
  }

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
}
