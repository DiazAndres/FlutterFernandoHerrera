import 'package:dartz/dartz.dart';
import 'package:pokeapi/core/errors/failures.dart';
import 'package:pokeapi/features/pokemon/domain/entities/pokemon.dart';
import 'package:pokeapi/features/pokemon/domain/repositories/pokemons_repository.dart';

class CapturePokemonUseCase {
  final PokemonsRepository pokemonRepository;

  CapturePokemonUseCase({required this.pokemonRepository});

  Future<Either<Failure, bool>> call(Pokemon pokemon) {
    return pokemonRepository.capturePokemon(pokemon);
  }
}
