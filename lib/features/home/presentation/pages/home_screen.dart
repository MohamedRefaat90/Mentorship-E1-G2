import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: AppPallete.homeBG,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor:AppPallete.kPurple ,
          unselectedItemColor: AppPallete.greyColor,
          elevation: 11,
          backgroundColor:AppPallete.homeBG,
          items: const [
              BottomNavigationBarItem(
                icon:Icon(Icons.home_filled),
                label:'Upcoming' ,
              ),
             BottomNavigationBarItem(
                icon:Icon(Icons.history),
                label:'Launches' ,
              ),
             BottomNavigationBarItem(
                icon:Icon(Icons.rocket_launch),
                label:'Rockets' ,
              ),
        ],)
      ),
    );
  }
}
