import 'package:bloc/bloc.dart';
import 'package:spacexx/features/launchpads/cubit/launchpad_state.dart';
import 'package:spacexx/features/launchpads/data/repo/launchpad_repo.dart';

class LaunchpadCubit extends Cubit<LaunchpadState> {
  LaunchpadCubit(this._launchpadRepo) : super(const LaunchpadState.initial());

  final LaunchpadRepo _launchpadRepo;

  emitLaunchpadState() async {
    emit(const LaunchpadState.loading());
    var response = await _launchpadRepo.getAllLaunchpads();

    response.when(
        success: (launchpadsList) =>
            emit(LaunchpadState.success(launchpadsList)),
        failure: (error) =>
            emit(LaunchpadState.error(error: error.apiErrorModel.message!)));
  }
}
