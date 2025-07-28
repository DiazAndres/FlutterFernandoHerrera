import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cinemapedia_code_generator/domain/entities/movie.dart';
import 'package:cinemapedia_code_generator/infrastructure/datasources/dio_client.dart';
import 'package:cinemapedia_code_generator/infrastructure/datasources/movies_api.dart';
import 'package:cinemapedia_code_generator/infrastructure/repositories/movies_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'movies_provider.g.dart';

// @riverpod
// Future<List<Movie>> getPopularMovies(GetPopularMoviesRef ref) async {
//   final dioClient = createDioClient();
//   final moviesApi = MoviesApi(dioClient.dio);
//   final moviesRepository = MoviesRepositoryImpl(moviesApi);

//   return await moviesRepository.getPopularMovies();
// }
