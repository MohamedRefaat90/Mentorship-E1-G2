import 'dart:developer';

import 'package:mentorship_e1_g3/core/networking/api_error_handler.dart';
import 'package:mentorship_e1_g3/core/networking/api_result.dart';
import 'package:mentorship_e1_g3/core/networking/api_services.dart';
import 'package:mentorship_e1_g3/features/rockets/data/models/rocket_respons_model.dart';

class RocketRepo {
  final ApiService apiService;

  RocketRepo(this.apiService);

  Future<ApiResult<RocketModelRespons>> getALlRocket() async {
    try {
      log("is donnnnnne");

      final response = await apiService.getAllRocket();

      log("is done");

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
