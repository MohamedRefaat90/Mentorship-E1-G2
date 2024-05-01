import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_e1_g3/features/crew/presentation/screens/crew_screen.dart';
import 'package:mentorship_e1_g3/features/home/data/models/launches/launches_model.dart';
import 'package:mentorship_e1_g3/features/home/logic/cubit/home_state.dart';
import 'package:mentorship_e1_g3/features/rockets/ui/screen/rockets_screen.dart';
import 'package:mentorship_e1_g3/features/launches/presentation/screen/launches_screen.dart';
import 'package:mentorship_e1_g3/features/upcoming/presentation/screen/upcoming_screen.dart';
import '../../data/models/upcoming_launches/upcoming_launches_model.dart';
import '../../data/repos/home_repo.dart';



class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepo) : super(const HomeState.initial());
  final HomeRepo _homeRepo;
  List<Launches> allLaunches = [];
  List<UpcomingLaunches> allUpcomingLaunches = [];

 void emitGetLaunches()async{
    emit(const HomeState.loading());
    final response = await _homeRepo.getLaunches();
    response.when(success: (launches) {
      allLaunches=launches;
      emit(HomeState.success(launches));
    }, failure: (error) {
      emit(HomeState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
  
  void emitGetUpcomingLaunches()async{
    emit(const HomeState.loading());
    final response = await _homeRepo.getUpcomingLaunches();
    response.when(success: (upcomingLaunches) {
      allUpcomingLaunches=upcomingLaunches;
      emit(HomeState.success(upcomingLaunches));
    }, failure: (error) {
      emit(HomeState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
  
  int currentIndex = 0;
  void changeBottomNavBar(int index) {
    currentIndex = index;
    emit(const HomeState.initial());
  }

  List<Widget> homeScreens = const [
    UpcomingScreen(),
    LaunchesScreen(),
    RocketScreen(),
    CrewScreen(),
  ];
}
