import '../../models/pokemon.dart';

abstract class IPokemonRepository {
  Future<List<Pokemon>> allPokemons(String query);
}
