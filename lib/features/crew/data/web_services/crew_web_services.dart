import 'package:dio/dio.dart';

class CrewsWebServices {
  late Dio dio;

  CrewsWebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: 'https://api.spacexdata.com/v4/',
      receiveDataWhenStatusError: true,
    );

    dio = Dio(options);
  }

  Future<List<dynamic>> getAllCrew() async {
    try {
      Response response = await dio.get('crew');
      if (response.statusCode == 200) {
        // If the response is successful, return the data
        print(response.data.toString());
        return response.data;
      } else {
        // If the response is not successful, throw an error
        throw Exception('Failed to load crew data');
      }
    } catch (e) {
      // If an error occurs during the request, print the error and return an empty list
      print(e.toString());
      return [];
    }
  }
}
