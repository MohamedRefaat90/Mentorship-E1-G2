import 'package:spacex/core/networking/api_error_handler.dart';
import 'package:spacex/core/networking/api_result.dart';
import 'package:spacex/core/networking/api_services.dart';
import 'package:spacex/features/home/data/models/launches/launches_model.dart';
import 'package:spacex/features/home/data/models/upcoming_launches/upcoming_launches_model.dart';

class HomeRepo {
  final ApiService _apiService;

  HomeRepo(this._apiService);

  Future<ApiResult<List<Launches>>> getLaunches() async {
    try {
      final response = await _apiService.getLaunches();
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }

  Future<ApiResult<List<UpcomingLaunches>>> getUpcomingLaunches() async {
    try {
      final response = await _apiService.getUpcomingLaunches();
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}
