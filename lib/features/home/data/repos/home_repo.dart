import 'package:spacexx/core/networking/api_error_handler.dart';
import 'package:spacexx/core/networking/api_result.dart';
import 'package:spacexx/core/networking/api_services.dart';
import 'package:spacexx/features/home/data/models/launches/launches_model.dart';
import 'package:spacexx/features/home/data/models/upcoming_launches/upcoming_launches_model.dart';

import '../../../crew/data/model/crew_model.dart';
import '../../../rockets/data/models/rocket_respons_body.dart';

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

  Future<ApiResult<List<RocketModel>>> getALlRocket() async {
    try {
      final response = await _apiService.getAllRocket();

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult<List<RocketModel>>.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<List<CrewModel>>> getAllCrew() async {
    try {
      final crew = await _apiService.getAllCrew();
      return ApiResult.success(crew);
    } catch (error) {
      return ApiResult<List<CrewModel>>.failure(ErrorHandler.handle(error));
    }
  }
}
