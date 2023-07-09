import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../bindings/pokemon_binding.dart';
import '../bindings/splash_binding.dart';
import '../ui/pages/pokemons_page/pokemons_page.dart';
import '../ui/pages/pokemon_show_page/pokemon_show_page.dart';
import '../ui/pages/splash_page/splash_page.dart';
import 'route_names.dart';

const _defaultTransition = Transition.native;

class AppPages {
  static List<GetPage> pages = [
    GetPage(
      name: RouteNames.unknown,
      page: () => const Scaffold(
        body: Center(child: Text('Unknown route')),
      ),
    ),
    GetPage(
      name: RouteNames.splash,
      binding: SplashBinding(),
      page: () => const SplashPage(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: RouteNames.pokemons,
      binding: PokemonBinding(),
      page: () => const PokemonsPage(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: RouteNames.pokemonShow,
      page: () => PokemonShowPage(),
      transition: _defaultTransition,
    ),
  ];
}
