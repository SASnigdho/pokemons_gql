import 'dart:developer';

import '../models/pokemon.dart';
import 'interfaces/i_pokemon_repository.dart';
import 'repository.dart';

class PokemonRepository extends Repository implements IPokemonRepository {
  @override
  Future<List<Pokemon>> allPokemons(String query) async {
    final List<Pokemon> pokemons = <Pokemon>[];

    try {
      final res = await apiClient.get(query: query);

      final data = res.data['pokemons'] as List;

      for (final item in data) {
        final product = Pokemon.fromJson(item);
        pokemons.add(product);
      }

      return pokemons;
    } catch (e) {
      log('PokemonRepository:: allPokemons@ $e');
      return pokemons;
    }
  }
}
