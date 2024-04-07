import 'package:mentorship_e1_g3/features/home/logic/cubit/home_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt=GetIt.instance;
Future<void> setUpGetIt()async{
   getIt.registerFactory<HomeCubit>(()=>HomeCubit());
}