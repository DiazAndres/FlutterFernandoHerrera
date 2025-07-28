import 'package:dartz/dartz.dart';
import 'package:pokeapi/core/errors/failures.dart';
import 'package:pokeapi/features/pokemon/domain/entities/pokemon.dart';
import 'package:pokeapi/features/pokemon/domain/repositories/pokemons_repository.dart';

class GetCapturedPokemonsUseCase {
  final PokemonsRepository pokemonsRepository;

  GetCapturedPokemonsUseCase({required this.pokemonsRepository});

  Future<Either<Failure, List<Pokemon>>> call() {
    return pokemonsRepository.getCapturedPokemons();
  }
}
