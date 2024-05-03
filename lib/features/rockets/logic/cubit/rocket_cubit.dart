import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_e1_g3/features/rockets/data/models/rocket_respons_model.dart';
import 'package:mentorship_e1_g3/features/rockets/data/repo/rocket_repo.dart';
import 'package:mentorship_e1_g3/features/rockets/logic/cubit/rocket_state.dart';


class RocketCubit extends Cubit<RocketState> {
  final RocketRepo _rocketRepo;
  RocketCubit(this._rocketRepo) : super(const RocketState.initial());
  List<RocketModelRespons> allRocket = [];

  void emitRocketState() async {
        emit(const RocketState.loading());

    final response = await _rocketRepo.getALlRocket();
    print(response);

    response.when(
      success: (rocketModel) async {
        final allRocket = rocketModel;
        emit(RocketState.success(allRocket));
      },
      failure: (error) {
        emit(
          RocketState.error(error: error.apiErrorModel.message ?? ''),
        );
      },
    );
  }
}
