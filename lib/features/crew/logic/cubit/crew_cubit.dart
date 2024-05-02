import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mentorship_e1_g3/features/crew/data/model/crew_model.dart';
import 'package:mentorship_e1_g3/features/crew/data/repository/crew_repository.dart';

part 'crew_state.dart';
part 'crew_cubit.freezed.dart';

class CrewCubit extends Cubit<CrewState<List<CrewModel>>> {
  final CrewRepository _crewRepository;

  CrewCubit(this._crewRepository) : super(const CrewState.initial());

  void getAllCrew() async {
    emit(const CrewState.loading());

    final result = await _crewRepository.getAllCrew();

    result.when(
      success: (crewList) {
        emit(CrewState.success(crewList));
      },
      failure: (error) {
        emit(CrewState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
