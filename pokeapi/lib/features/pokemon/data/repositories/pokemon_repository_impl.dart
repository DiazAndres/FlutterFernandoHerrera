import 'dart:isolate';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pokeapi/core/errors/failures.dart';
import 'package:pokeapi/features/pokemon/data/datasource/pokemons_local_data_source.dart';
import 'package:pokeapi/features/pokemon/data/datasource/pokemons_remote_data_source.dart';
import 'package:pokeapi/features/pokemon/domain/entities/pokemon.dart';
import 'package:pokeapi/features/pokemon/domain/repositories/pokemons_repository.dart';

class PokemonRepositoryImpl implements PokemonsRepository {
  final PokemonsLocalDataSource pokemonsLocalDataSource;
  final PokemonsRemoteDataSource pokemonsRemoteDataSource;

  PokemonRepositoryImpl({
    required this.pokemonsLocalDataSource,
    required this.pokemonsRemoteDataSource,
  });

  @override
  Future<Either<Failure, bool>> capturePokemon(Pokemon pokemon) async {
    try {
      final bool response = await pokemonsLocalDataSource.capturePokemon(
        pokemon,
      );

      return Right(response);
    } on LocalFailure {
      return Left(LocalFailure());
    }
  }

  @override
  Future<Either<Failure, List<Pokemon>>> getCapturedPokemons() async {
    try {
      final List<Pokemon> response =
          await pokemonsLocalDataSource.getCapturedPokemons();

      return Right(response);
    } on LocalFailure {
      return Left(LocalFailure());
    }
  }

  @override
  Future<Either<Failure, Pokemon>> getPokemonById(int id) async {
    try {
      final Pokemon response = await pokemonsRemoteDataSource.getPokemon(id);
      return Right(response);
    } on DioException {
      return Left(ServerFailure());
    }
  }
}
