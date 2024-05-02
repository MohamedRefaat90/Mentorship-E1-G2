import 'package:mentorship_e1_g3/core/networking/api_error_handler.dart';
import 'package:mentorship_e1_g3/core/networking/api_result.dart';
import 'package:mentorship_e1_g3/core/networking/api_services.dart';
import 'package:mentorship_e1_g3/features/rockets/data/models/rocket_respons_body.dart';

class RocketRepo{
final ApiService apiService;

  RocketRepo(this.apiService);

 Future<ApiResult<RocketResponseModel>> getALlRocket()
      async {
    try {
      final response = await apiService.getAllRocket();

      
      return ApiResult.success(response );
    } catch (error) {
      return ApiResult<RocketResponseModel>.failure(ErrorHandler.handle(error));
    }
  }
}