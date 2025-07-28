import 'package:get_it/get_it.dart';
import 'package:pokeapi/features/pokemon/data/datasource/pokemons_local_data_source.dart';
import 'package:pokeapi/features/pokemon/data/datasource/pokemons_remote_data_source.dart';
import 'package:pokeapi/features/pokemon/data/repositories/pokemon_repository_impl.dart';
import 'package:pokeapi/features/pokemon/domain/repositories/pokemons_repository.dart';
import 'package:pokeapi/features/pokemon/domain/use_cases/capture_pokemon.dart';
import 'package:pokeapi/features/pokemon/domain/use_cases/get_captured_pokemons.dart';
import 'package:pokeapi/features/pokemon/domain/use_cases/search_pokemon.dart';
import 'package:pokeapi/features/pokemon/presentation/bloc/search_pokemon/search_pokemon_bloc.dart';

final di = GetIt.instance;

Future<void> init() async {
  // Bloc
  di.registerFactory(() => SearchPokemonBloc(di(), di(), di()));

  // Use cases
  di.registerLazySingleton(
    () => CapturePokemonUseCase(pokemonRepository: di()),
  );
  di.registerLazySingleton(
    () => GetCapturedPokemonsUseCase(pokemonsRepository: di()),
  );
  di.registerLazySingleton(
    () => SearchPokemonUseCase(pokemonsRepository: di()),
  );

  // Repositoriesas
  di.registerLazySingleton<PokemonsRepository>(
    () => PokemonRepositoryImpl(
      pokemonsLocalDataSource: di(),
      pokemonsRemoteDataSource: di(),
    ),
  );

  di.registerLazySingleton<PokemonsLocalDataSource>(
    () => HivePokemonLocalDataSourceImpl(),
  );

  di.registerLazySingleton<PokemonsRemoteDataSource>(
    () => PokemonsRemoteDataSourceImpl(),
  );
}
