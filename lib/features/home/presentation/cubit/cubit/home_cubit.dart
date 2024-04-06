
import 'package:flutter_bloc/flutter_bloc.dart';

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



}
