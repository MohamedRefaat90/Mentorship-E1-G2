import 'package:dio/dio.dart';
import 'package:mentorship_e1_g3/core/networking/api_services.dart';
import 'package:mentorship_e1_g3/core/networking/dio_factory.dart';
import 'package:mentorship_e1_g3/features/home/logic/cubit/home_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:mentorship_e1_g3/features/rockets/data/repo/rocket_repo.dart';
import 'package:mentorship_e1_g3/features/rockets/logic/cubit/rocket_cubit.dart';

final getIt = GetIt.instance;
Future<void> setUpGetIt() async {
  getIt.registerFactory<HomeCubit>(() => HomeCubit());

  //dio
  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

// rocket page
  getIt.registerLazySingleton<RocketRepo>(() => RocketRepo(getIt()));
  getIt.registerFactory<RocketCubit>(() => RocketCubit(getIt()));
}
