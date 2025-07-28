import 'package:cinemapedia_code_generator/config/constants/environment.dart';
import 'package:cinemapedia_code_generator/domain/entities/movie.dart';
import 'package:cinemapedia_code_generator/domain/repositories/movies_repository.dart';
import 'package:cinemapedia_code_generator/infrastructure/datasources/movies_api.dart';
import 'package:cinemapedia_code_generator/infrastructure/mappers/movie_mapper.dart';
import 'package:cinemapedia_code_generator/infrastructure/models/moviedb/movie_model.dart';

// class MoviesRepositoryImpl implements MoviesRepository {
//   final MoviesApi _moviesApi;

//   MoviesRepositoryImpl(this._moviesApi);

//   @override
//   Future<List<Movie>> getPopularMovies() async {
//     final response = await _moviesApi.getPopularMovies(Environment.movieDbKey);
//     final results = response['results']
//         as List<dynamic>; // Accede correctamente a la lista de películas
//     return results
//         .map(
//             (movieJson) => MovieMapper.toEntity(MovieModel.fromJson(movieJson)))
//         .toList();
//   }
// }
