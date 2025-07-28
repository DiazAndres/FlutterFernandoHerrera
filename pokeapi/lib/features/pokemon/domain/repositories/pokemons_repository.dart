import 'package:pokeapi/core/errors/failures.dart';
import 'package:pokeapi/features/pokemon/domain/entities/pokemon.dart';
import 'package:dartz/dartz.dart';

abstract class PokemonsRepository {
  Future<Either<Failure, Pokemon>> getPokemonById(int id);
  Future<Either<Failure, bool>> capturePokemon(Pokemon pokemon);
  Future<Either<Failure, List<Pokemon>>> getCapturedPokemons();
}
