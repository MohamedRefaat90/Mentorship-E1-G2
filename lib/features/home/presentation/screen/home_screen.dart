import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_e1_g3/core/di/dependency_injection.dart';
import 'package:mentorship_e1_g3/core/resources/assets.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';
import 'package:mentorship_e1_g3/features/home/presentation/widgets/bottom_nav_bar_items_list.dart';
import '../../logic/cubit/home_cubit.dart';
import '../../logic/cubit/home_state.dart';
import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeCubit cubit = getIt.get<HomeCubit>();
    return BlocProvider(
      create: (context) => cubit,
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return SafeArea(
            child: Stack(
              children: [
                Positioned.fill(
                  child: Opacity(
                    opacity: 0.5, 
                    child: Image.asset(
                      Assets.backgroundImage, 
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Scaffold(
                  extendBody: true,
                  backgroundColor: Colors.transparent, 
                  bottomNavigationBar: CrystalNavigationBar(
                    margin: EdgeInsets.zero,
                    selectedItemColor: AppPallete.purple,
                    unselectedItemColor: AppPallete.greyColor,
                    backgroundColor: Colors.transparent, 
                    items: items,
                    currentIndex: cubit.currentIndex,
                    onTap: (index) {
                      cubit.changeBottomNavBar(index);
                    },
                  ),
                  body: cubit.homeScreens[cubit.currentIndex],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
