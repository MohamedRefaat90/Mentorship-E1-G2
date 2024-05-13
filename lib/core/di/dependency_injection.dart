import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:spacexx/core/networking/api_services.dart';
import 'package:spacexx/core/networking/dio_factory.dart';
import 'package:spacexx/features/crew/data/repository/crew_repository.dart';
import 'package:spacexx/features/crew/logic/cubit/crew_cubit.dart';
import 'package:spacexx/features/launchpads/cubit/launchpad_cubit.dart';
import 'package:spacexx/features/home/data/repos/home_repo.dart';
import 'package:spacexx/features/home/data/repos/rocket_repo.dart';
import 'package:spacexx/features/home/logic/cubit/home_cubit.dart';
import 'package:spacexx/features/rockets/logic/cubit/rocket_cubit.dart';

import '../../features/launchpads/data/repo/launchpad_repo.dart';

final getIt = GetIt.instance;
Future<void> setUpGetIt() async {
  //dio
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

// home repository
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));

//home cubit
  getIt.registerLazySingleton<HomeCubit>(() => HomeCubit(getIt()));

// rocket page
  getIt.registerLazySingleton<RocketRepo>(() => RocketRepo(getIt()));
  getIt.registerFactory<RocketCubit>(() => RocketCubit(getIt()));

  //crew
  getIt.registerLazySingleton<CrewRepository>(() => CrewRepository(getIt()));
  getIt.registerFactory<CrewCubit>(() => CrewCubit(getIt()));

  // Dragones
  getIt.registerLazySingleton<LaunchpadRepo>(() => LaunchpadRepo(getIt()));
  getIt.registerFactory<LaunchpadCubit>(() => LaunchpadCubit(getIt()));
}
