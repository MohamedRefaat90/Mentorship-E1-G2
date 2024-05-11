import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'dragones_state.dart';

class DragonesCubit extends Cubit<DragonesState> {
  DragonesCubit() : super(DragonesInitial());
}
