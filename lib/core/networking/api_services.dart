import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:spacexx/core/networking/api_constant.dart';
import 'package:spacexx/features/crew/data/model/crew_model.dart';
import 'package:spacexx/features/launchpads/data/models/lanuchpad_model.dart';
import 'package:spacexx/features/home/data/models/launches/launches_model.dart';
import 'package:spacexx/features/home/data/models/upcoming_launches/upcoming_launches_model.dart';
import 'package:spacexx/features/rockets/data/models/rocket_respons_body.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseURL)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(ApiConstants.allCrew)
  Future<List<CrewModel>> getAllCrew();

  @GET(ApiConstants.allRockets)
  Future<List<RocketModel>> getAllRocket();

  @GET(ApiConstants.launches)
  Future<List<Launches>> getLaunches();

  @GET(ApiConstants.upcomingLaunches)
  Future<List<UpcomingLaunches>> getUpcomingLaunches();

  @GET(ApiConstants.launchpads)
  Future<List<LaunchpadModel>> getAllLaunchpads();
}
