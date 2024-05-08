import 'package:spacexx/core/networking/api_error_handler.dart';
import 'package:spacexx/core/networking/api_result.dart';
import 'package:spacexx/core/networking/api_services.dart';
import 'package:spacexx/features/crew/data/model/crew_model.dart';

class CrewRepository {
  final ApiService apiService;

  CrewRepository(this.apiService);

  Future<ApiResult<List<CrewModel>>> getAllCrew() async {
    try {
      final crew = await apiService.getAllCrew();
      return ApiResult.success(crew);
    } catch (error) {
      return ApiResult<List<CrewModel>>.failure(ErrorHandler.handle(error));
    }
  }
}
