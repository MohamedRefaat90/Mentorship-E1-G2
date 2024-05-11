import 'package:spacexx/core/networking/api_error_handler.dart';
import 'package:spacexx/core/networking/api_result.dart';
import 'package:spacexx/core/networking/api_services.dart';
import 'package:spacexx/features/launchpads/data/models/lanuchpad_model.dart';

class LaunchpadRepo {
  final ApiService _apiService;

  LaunchpadRepo(this._apiService);

  Future<ApiResult<List<LaunchpadModel>>> getAllLaunchpads() async {
    try {
      List<LaunchpadModel> response = await _apiService.getAllLaunchpads();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
