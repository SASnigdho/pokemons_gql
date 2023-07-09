import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemons_gql/app/data/models/pokemon.dart';
import '../../../const/app_colors.dart';

// ignore: must_be_immutable
class PokemonShowPage extends StatelessWidget {
  PokemonShowPage({super.key}) {
    pokemon = Get.arguments as Pokemon;
  }

  late Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    final titleTs =
        Get.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold);

    final titleMedium = Get.textTheme.titleMedium;

    return Scaffold(
      appBar: AppBar(title: Text('${pokemon.name}')),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: [
            Container(
              height: 200,
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
            const SizedBox(height: 50),
            Card(
              elevation: 8,
              color: AppColors.lightBg,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Details', style: titleTs),
                    Text('${pokemon.classification}'),

                    const SizedBox(height: 16),

                    // Height
                    Text('Height', style: titleMedium),
                    Text(
                      '${pokemon.height?.minimum} - ${pokemon.height?.maximum}',
                    ),

                    const SizedBox(height: 16),

                    // Weight
                    Text('Weight', style: titleMedium),
                    Text(
                      '${pokemon.weight?.minimum} - ${pokemon.weight?.maximum}',
                    ),

                    const SizedBox(height: 16),

                    // Max HP
                    Text('MaxHP', style: titleMedium),
                    Text('${pokemon.maxHp}'),

                    const SizedBox(height: 16),

                    // Max HP
                    Text('Max Cp', style: titleMedium),
                    Text('${pokemon.maxCp}'),

                    const SizedBox(height: 16),

                    // Resistant
                    Text('Resistant', style: titleMedium),
                    Text('${pokemon.resistant}'),

                    const SizedBox(height: 16),

                    // Attacks (Fast)
                    Text('Attacks (Fast)', style: titleMedium),
                    Text('${pokemon.attacks?.fast?.map((e) => e.name)}'),

                    const SizedBox(height: 16),

                    // Attacks (Fast)
                    Text('Attacks (Special)', style: titleMedium),
                    Text('${pokemon.attacks?.special?.map((e) => e.name)}'),

                    const SizedBox(height: 16),

                    // Flee Rate
                    Text('Flee Rate', style: titleMedium),
                    Text('${pokemon.fleeRate}'),

                    const SizedBox(height: 16),

                    // Evolution Requirements
                    Text('Evolution Requirements', style: titleMedium),
                    Text(
                      'Name: ${pokemon.evolutionRequirements?.name}, '
                      'Amount: ${pokemon.evolutionRequirements?.amount}',
                    ),

                    const SizedBox(height: 16),

                    //
                    Center(
                      child: ElevatedButton(
                        onPressed: () async {
                          Get.back();
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: AppColors.primary,
                        ),
                        child: const Text('Back'),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
