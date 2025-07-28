import 'package:cinemapedia_code_generator/config/constants/environment.dart';
import 'package:dio/dio.dart';

class DioClient {
  final Dio _dio;

  DioClient(this._dio);

  Dio get dio => _dio;
}

DioClient createDioClient() {
  // final dio = Dio();
  // dio.interceptors.add(LogInterceptor());
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3/',
      queryParameters: {
        'api_key': Environment.movieDbKey,
      },
    ),
  );

  return DioClient(dio);
}
