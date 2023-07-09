import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../const/app_colors.dart';
import '../../../../data/models/pokemon.dart';
import '../../../../routes/route_names.dart';

class PokemonsListItem extends StatelessWidget {
  const PokemonsListItem(this.pokemon, {super.key});

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    // - Display the name, ID, weight, height, classification, and image

    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () async {
          await Get.toNamed(RouteNames.pokemonShow, arguments: pokemon);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 60,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.lightBg,
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: NetworkImage('${pokemon.image}'),
                  ),
                ),
                margin: const EdgeInsets.only(right: 16),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Id
                    Text('Id: ${pokemon.id}', style: Get.textTheme.labelSmall),

                    Text(
                      '${pokemon.name}',
                      style: Get.textTheme.titleLarge,
                      overflow: TextOverflow.ellipsis,
                    ),

                    // Classification
                    Text(
                      '${pokemon.classification}',
                      style: Get.textTheme.labelSmall,
                    ),

                    const SizedBox(height: 16),

                    Text(
                      'Weight: ${pokemon.weight?.minimum} - ${pokemon.weight?.maximum}',
                      style: Get.textTheme.labelSmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
