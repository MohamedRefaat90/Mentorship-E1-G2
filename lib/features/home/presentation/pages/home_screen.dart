import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';
import 'package:mentorship_e1_g3/features/home/presentation/cubit/cubit/home_cubit.dart';
import 'package:mentorship_e1_g3/features/home/presentation/widgets/bottom_nav_bar_items_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          var cubit = HomeCubit.get(context);
          return SafeArea(
            child: Scaffold(
              backgroundColor: AppPallete.homeBG,
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                selectedItemColor: AppPallete.kPurple,
                unselectedItemColor: AppPallete.greyColor,
                backgroundColor: AppPallete.homeBG,
                items: items,
                currentIndex: cubit.currentIndex,
                onTap: (index) {
                  cubit.changeBottomNavBar(index);
                },
              ),
              body:cubit.homeScreens[cubit.currentIndex]
            ),
          );
        },
      ),
    );
  }
}
