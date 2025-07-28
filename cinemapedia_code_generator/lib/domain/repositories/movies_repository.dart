import 'package:cinemapedia_code_generator/domain/entities/movie.dart';

abstract class MoviesRepository {
  Future<List<Movie>> getPopularMovies();
}
