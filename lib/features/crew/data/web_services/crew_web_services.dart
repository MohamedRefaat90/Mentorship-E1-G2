import 'package:dio/dio.dart';

class CrewsWebServices {
  late Dio dio;

  crewWebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: 'https://api.spacexdata.com/v4/',
      receiveDataWhenStatusError: true,
    );

    dio = Dio(options);
  }

  Future<List<dynamic>> getAllCrew() async {
    try {
      Response response = await dio.get('crew');
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
