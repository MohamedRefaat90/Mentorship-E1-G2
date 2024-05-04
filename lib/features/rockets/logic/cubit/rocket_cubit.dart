import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_e1_g3/features/rockets/data/repo/rocket_repo.dart';
import 'package:mentorship_e1_g3/features/rockets/logic/cubit/rocket_state.dart';
import 'package:mentorship_e1_g3/features/rockets/data/models/rocket_respons_body.dart';

class RocketCubit extends Cubit<RocketState> {
  final RocketRepo _rocketRepo;
  RocketCubit(this._rocketRepo) : super(const RocketState.initial());
  List<RocketModel> allRocket = [];

  void emitRocketState() async {
    emit(const RocketState.loading());

    final response = await _rocketRepo.getALlRocket();

    response.when(
      success: (rocketModel) {
        emit(RocketState.success(rocketModel));
      },
      failure: (error) {
        emit(
          RocketState.error(error: error.apiErrorModel.message ?? ''),
        );
      },
    );
  }

  void fetchRocketDetails(String rocketId) {}
}
