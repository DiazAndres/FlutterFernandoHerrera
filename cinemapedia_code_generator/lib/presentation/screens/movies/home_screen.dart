import 'package:cinemapedia_code_generator/presentation/providers/movies_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  static const String name = 'home-screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final moviesAsyncValue = ref.watch(getPopularMoviesProvider);

    // return Scaffold(
    //   body: moviesAsyncValue.when(
    //     data: (movies) => ListView.builder(
    //       itemCount: movies.length,
    //       itemBuilder: (context, index) {
    //         final movie = movies[index];

    //         return ListTile(
    //           title: Text(movie.title),
    //           subtitle: Text(movie.overview),
    //         );
    //       },
    //     ),
    //     loading: () => const Center(child: CircularProgressIndicator()),
    //     error: (error, stackTrace) => Center(child: Text('Error: $error')),
    //   ),
    // );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cinemapedia'),
      ),
      body: const Center(
        child: Text('Main'),
      ),
    );
  }
}
