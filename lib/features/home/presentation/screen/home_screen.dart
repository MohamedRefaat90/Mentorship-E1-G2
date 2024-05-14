import 'package:flutter/material.dart';
import 'package:spacexx/core/widgets/app_connectivity.dart';
import '../../logic/cubit/home_cubit.dart';
import '../../logic/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacexx/core/resources/assets.dart';
import 'package:spacexx/core/themes/app_pallete.dart';
import 'package:spacexx/core/di/dependency_injection.dart';
import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:spacexx/features/home/presentation/widgets/bottom_nav_bar_items_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<HomeCubit>(),
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
                AppConnectivity(
                  child: Scaffold(
                    extendBody: true,
                    backgroundColor: Colors.transparent,
                    bottomNavigationBar: CrystalNavigationBar(
                      margin: EdgeInsets.zero,
                      paddingR: EdgeInsets.zero,
                      marginR: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 25),
                      selectedItemColor: AppPalette.purple,
                      unselectedItemColor: AppPalette.greyColor,
                      backgroundColor: Colors.transparent,
                      items: items,
                      currentIndex: context.read<HomeCubit>().currentIndex,
                      onTap: (index) {
                        context.read<HomeCubit>().changeBottomNavBar(index);
                      },
                    ),
                    body: context
                        .read<HomeCubit>()
                        .homeScreens[context.read<HomeCubit>().currentIndex],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
