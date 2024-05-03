import 'package:flutter/material.dart';
import '../../logic/cubit/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';
import 'package:mentorship_e1_g3/core/di/dependency_injection.dart';
import 'package:mentorship_e1_g3/features/home/presentation/widgets/bottom_nav_bar_items_list.dart';

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
            child: Scaffold(
                backgroundColor: AppPalette.homeBG,
                bottomNavigationBar: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  selectedItemColor: AppPalette.purple,
                  unselectedItemColor: AppPalette.greyColor,
                  backgroundColor: AppPalette.homeBG,
                  items: items,
                  currentIndex: cubit.currentIndex,
                  onTap: (index) {
                    cubit.changeBottomNavBar(index);
                  },
                ),
                body: cubit.homeScreens[cubit.currentIndex]),
          );
        },
      ),
    );
  }
}
