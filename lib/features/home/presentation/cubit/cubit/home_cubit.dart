
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../launches/presentation/pages/launches_screen.dart';
import '../../../../rockets/presentation/pages/rockets_screen.dart';
import '../../../../upcoming/presentation/pages/upcoming_screen.dart';
import '../../profile/presentation/pages/profile_screen.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
   static HomeCubit get(context)=>BlocProvider.of(context);

   ///bottom navigation bar
    int currentIndex = 0;

    ////change bottom nav current index
    void changeBottomNavBar(int index){
     currentIndex=index;
     emit(ChangeBottomNavBar());
   }

   /// home screens
   List<Widget>homeScreens=const[
    UpcomingScreen(),
    LaunchesScreen(),
    RocketScreen(),
    ProfileScreen(),
    
   ];



}
