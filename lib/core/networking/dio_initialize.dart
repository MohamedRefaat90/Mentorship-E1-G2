import 'package:dio/dio.dart';

late final Dio _dio;
Dio createDioandSetupInterceptors() {
  Dio dio = Dio();

  dio.options.connectTimeout = const Duration(seconds: 20);
  dio.options.receiveTimeout = const Duration(seconds: 20);

  dio.interceptors.add(LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: true));
  return dio;
}
