import 'package:flutter/material.dart';
import 'package:pokeapi/core/errors/failures.dart';
import 'package:pokeapi/features/pokemon/data/models/pokemon_model.dart';
import 'package:pokeapi/features/pokemon/domain/entities/pokemon.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class PokemonsLocalDataSource {
  Future<bool> capturePokemon(Pokemon pokemon);
  Future<List<Pokemon>> getCapturedPokemons();
}

class HivePokemonLocalDataSourceImpl implements PokemonsLocalDataSource {
  HivePokemonLocalDataSourceImpl() {
    Hive.initFlutter();
  }

  @override
  Future<bool> capturePokemon(Pokemon pokemon) async {
    try {
      Box<dynamic> box = await Hive.openBox('pokemons');
      box.put(pokemon.id, PokemonModel.fromEntity(pokemon).toJson());
      return true;
    } catch (error) {
      debugPrint(error.toString());
      throw LocalFailure();
    }
  }

  @override
  Future<List<PokemonModel>> getCapturedPokemons() async {
    try {
      Box<dynamic> box = await Hive.openBox('pokemons');

      return box.values.map((e) => PokemonModel.fromJson(e)).toList();
    } catch (error) {
      debugPrint(error.toString());
      throw LocalFailure();
    }
  }
}
