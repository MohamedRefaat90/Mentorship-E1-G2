import 'package:spacexx/core/networking/api_error_handler.dart';
import 'package:spacexx/core/networking/api_result.dart';
import 'package:spacexx/core/networking/api_services.dart';
import 'package:spacexx/features/rockets/data/models/rocket_respons_body.dart';

class RocketRepo {
  final ApiService apiService;

  RocketRepo(this.apiService);

  Future<ApiResult<List<RocketModel>>> getALlRocket() async {
    try {
      final response = await apiService.getAllRocket();

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult<List<RocketModel>>.failure(ErrorHandler.handle(error));
    }
  }
}
