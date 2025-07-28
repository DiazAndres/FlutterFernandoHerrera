// import 'package:cinemapedia_code_generator/domain/datasources/movies_datasource.dart';
import 'package:cinemapedia_code_generator/domain/entities/movie.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

// class MoviedbDatasource extends MoviesDataSource {

//   @override
//   Future<List<Movie>> getNowPlaying({int page = 1}) {
//     // TODO: implement getNowPlaying
//     throw UnimplementedError();
//   }
// }

part 'moviedb_datasource.g.dart';

@RestApi(baseUrl: 'https://api.themoviedb.org/3')
abstract class MoviedbDatasource {
  factory MoviedbDatasource(Dio dio, {String? baseUrl}) = _MoviedbDatasource;

  @GET('/movie/now_playing')
  Future<List<Movie>> getNowPlaying({@Query("page") int page = 1});
}
