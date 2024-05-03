import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_e1_g3/features/rockets/data/models/rocket_respons_body.dart';
import 'package:mentorship_e1_g3/features/rockets/data/repo/rocket_repo.dart';
import 'package:mentorship_e1_g3/features/rockets/logic/cubit/rocket_state.dart';

class RocketCubit extends Cubit<RocketState> {
  final RocketRepo _rocketRepo;
  RocketCubit(this._rocketRepo) : super(const RocketState.initial());
  List<RocketModel> allRocket = [];

  void emitRocketState() async {
    emit(const RocketState.loading());

    final response = await _rocketRepo.getALlRocket();
    print(response);

    response.when(
      success: (rocketModel) {
        // allRocket = rocketModel;
        debugPrint('==============================');
        debugPrint(rocketModel.length.toString());
        debugPrint('==============================');
        emit(RocketState.success(rocketModel));
      },
      failure: (error) {
        debugPrint('==============================');
        debugPrint(error.apiErrorModel.message.toString());
        debugPrint('==============================');
        emit(
          RocketState.error(error: error.apiErrorModel.message ?? ''),
        );
      },
    );
  }
}
