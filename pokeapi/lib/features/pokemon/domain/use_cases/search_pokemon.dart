import 'package:dartz/dartz.dart';
import 'package:pokeapi/core/errors/failures.dart';
import 'package:pokeapi/features/pokemon/domain/entities/pokemon.dart';
import 'package:pokeapi/features/pokemon/domain/repositories/pokemons_repository.dart';

class SearchPokemonUseCase {
  final PokemonsRepository pokemonsRepository;

  SearchPokemonUseCase({required this.pokemonsRepository});

  Future<Either<Failure, Pokemon>> call(int id) {
    return pokemonsRepository.getPokemonById(id);
  }
}
