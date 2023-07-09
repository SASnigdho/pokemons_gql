import 'dart:developer';

import 'package:get/get.dart';

import '../const/query.dart';
import '../data/models/pokemon.dart';
import '../data/provider/interfaces/i_pokemon_repository.dart';
import 'base_controller.dart';

class PokemonController extends BaseController {
  PokemonController(this.repository);

  final IPokemonRepository repository;
  final isLoading = false.obs;
  final pokemons = <Pokemon>[].obs;

  @override
  Future<void> onReady() async {
    await fetchPokemons();
    super.onReady();
  }

  Future<void> fetchPokemons() async {
    isLoading.value = true;

    try {
      final res = await repository.allPokemons(Query.allPokemons);

      pokemons.addAll(res);

      isLoading.value = false;
    } catch (e) {
      log('HomeController:: fetchPokemons@ $e');
      isLoading.value = false;
    }
  }
}
