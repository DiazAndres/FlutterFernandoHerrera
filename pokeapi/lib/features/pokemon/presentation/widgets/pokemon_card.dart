import 'package:flutter/material.dart';
import 'package:pokeapi/features/pokemon/domain/entities/pokemon.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({super.key, required this.pokemon});

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [Image.network(pokemon.imageUrl), Text(pokemon.name)],
      ),
    );
  }
}
