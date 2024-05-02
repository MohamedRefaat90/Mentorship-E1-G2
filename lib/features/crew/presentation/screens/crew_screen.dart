import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/themes/styles.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';
import 'package:mentorship_e1_g3/core/networking/api_services.dart';
import 'package:mentorship_e1_g3/features/crew/data/model/crew_model.dart';
import 'package:mentorship_e1_g3/features/crew/data/repository/crew_repository.dart';
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
    final repository = CrewRepository(ApiService(Dio()));
    final crewResult = await repository.getAllCrew();
    crewResult.when(
      success: (crew) {
        setState(() {
          allCrew = crew;
        });
      },
      failure: (errorHandler) {
        // Handle failure
        print('Failed to load crew');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPallete.homeBG,
      appBar: AppBar(
        backgroundColor: AppPallete.homeBG,
        title: Text(
          'Crew Members',
          style: AppStyles.font24BoldWhite(context),
        ),
      ),
      body: CrewGrid(allCrew: allCrew),
    );
  }
}
