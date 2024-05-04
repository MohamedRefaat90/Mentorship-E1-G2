import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mentorship_e1_g3/core/networking/dio_factory.dart';

import 'package:mentorship_e1_g3/core/networking/api_services.dart';
import 'package:mentorship_e1_g3/features/crew/logic/cubit/crew_cubit.dart';

import 'package:mentorship_e1_g3/features/home/data/repos/home_repo.dart';

import 'package:mentorship_e1_g3/features/home/logic/cubit/home_cubit.dart';
import 'package:mentorship_e1_g3/features/rockets/data/repo/rocket_repo.dart';
import 'package:mentorship_e1_g3/features/rockets/logic/cubit/rocket_cubit.dart';
import 'package:mentorship_e1_g3/features/crew/data/repository/crew_repository.dart';

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
}
