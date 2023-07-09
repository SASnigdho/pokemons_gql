import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../const/app_colors.dart';
import '../../../controllers/pokemon_controller.dart';
import 'widgets/pokemons_list_item.dart';

class PokemonsPage extends GetView<PokemonController> {
  const PokemonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pokemons')),
      body: Obx(
        () => controller.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(color: AppColors.primary),
              )
            : ListView.separated(
                itemBuilder: (context, i) {
                  final product = controller.pokemons[i];

                  return PokemonsListItem(product);
                },
                separatorBuilder: (context, i) => const SizedBox(),
                itemCount: controller.pokemons.length,
              ),
      ),
    );
  }
}
