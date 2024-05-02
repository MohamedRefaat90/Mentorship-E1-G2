import 'package:dio/dio.dart';
import 'package:mentorship_e1_g3/core/networking/api_constant.dart';
import 'package:mentorship_e1_g3/features/rockets/data/models/rocket_respons_body.dart';
import 'package:retrofit/http.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseURL)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(ApiConstants.allRockets)
  Future<List<RocketModel>> getAllRocket();
}
