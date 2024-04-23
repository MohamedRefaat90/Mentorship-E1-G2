
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_e1_g3/features/launches/presentation/screen/launches_screen.dart';
import 'package:mentorship_e1_g3/features/rockets/ui/screen/rockets_screen.dart';
import 'package:mentorship_e1_g3/features/upcoming/presentation/screen/upcoming_screen.dart';

import '../../../profile/presentation/pages/profile_screen.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  
    int currentIndex = 0;

    void changeBottomNavBar(int index){
     currentIndex=index;
     emit(ChangeBottomNavBar());
   }

   List<Widget>homeScreens=const[
    UpcomingScreen(),
    LaunchesScreen(),
    RocketScreen(),
    ProfileScreen(),

   ];



}
