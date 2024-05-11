import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacexx/core/di/dependency_injection.dart';
import 'package:spacexx/features/crew/presentation/screens/crew_screen.dart';
import 'package:spacexx/features/launchpads/cubit/launchpad_cubit.dart';
import 'package:spacexx/features/launchpads/presentation/screen/launchpad_screen.dart';
import 'package:spacexx/features/home/data/models/launches/launches_model.dart';
import 'package:spacexx/features/home/logic/cubit/home_state.dart';
import 'package:spacexx/features/launches/presentation/screen/launches_screen.dart';
import 'package:spacexx/features/rockets/ui/screen/rockets_screen.dart';
import 'package:spacexx/features/upcoming/presentation/screen/upcoming_screen.dart';

import '../../data/models/upcoming_launches/upcoming_launches_model.dart';
import '../../data/repos/home_repo.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  List<Launches> allLaunches = [];
  List<UpcomingLaunches> allUpcomingLaunches = [];
  int currentIndex = 0;

  List<Widget> homeScreens = [
    const UpcomingScreen(),
    const LaunchesScreen(),
    const RocketScreen(),
    const CrewScreen(),
    BlocProvider<LaunchpadCubit>(
      create: (context) => getIt<LaunchpadCubit>(),
      child: const LaunchpadsScreen(),
    )
  ];

  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  void changeBottomNavBar(int index) {
    // currentIndex = index;
    // emit(const HomeState.refreshBottomNavbar());

    if (index != currentIndex) {
      currentIndex = index;
      emit(HomeState.success(
          currentIndex)); // Assuming you have a success state with currentIndex
    }
  }

  void emitGetLaunches() async {
    emit(const HomeState.loading());
    final response = await _homeRepo.getLaunches();
    response.when(success: (launches) {
      allLaunches = launches;
      emit(HomeState.success(launches));
    }, failure: (error) {
      emit(HomeState.error(error: error.apiErrorModel.message ?? ''));
    });
  }

  void emitGetUpcomingLaunches() async {
    emit(const HomeState.loading());
    final response = await _homeRepo.getUpcomingLaunches();
    response.when(success: (upcomingLaunches) {
      allUpcomingLaunches = upcomingLaunches;
      emit(HomeState.success(upcomingLaunches));
    }, failure: (error) {
      emit(HomeState.error(error: error.apiErrorModel.message ?? ''));
    });
  }

  void emitRocketState() async {
    emit(const HomeState.loading());

    final response = await _homeRepo.getALlRocket();

    response.when(
      success: (rocketModel) {
        emit(HomeState.success(rocketModel));
      },
      failure: (error) {
        emit(
          HomeState.error(error: error.apiErrorModel.message ?? ''),
        );
      },
    );
  }

  void getAllCrew() async {
    emit(const HomeState.loading());

    final result = await _homeRepo.getAllCrew();

    result.when(
      success: (crewList) {
        emit(HomeState.success(crewList));
      },
      failure: (error) {
        emit(HomeState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
