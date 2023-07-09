// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pokemon _$PokemonFromJson(Map<String, dynamic> json) => Pokemon(
      id: json['id'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      classification: json['classification'] as String?,
      height: json['height'] == null
          ? null
          : Height.fromJson(json['height'] as Map<String, dynamic>),
      weight: json['weight'] == null
          ? null
          : Weight.fromJson(json['weight'] as Map<String, dynamic>),
      maxHp: json['maxHP'] as int?,
      maxCp: json['maxCP'] as int?,
      resistant: (json['resistant'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      attacks: json['attacks'] == null
          ? null
          : Attacks.fromJson(json['attacks'] as Map<String, dynamic>),
      weaknesses: (json['weaknesses'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      fleeRate: (json['fleeRate'] as num?)?.toDouble(),
      evolutionRequirements: json['evolutionRequirements'] == null
          ? null
          : EvolutionRequirements.fromJson(
              json['evolutionRequirements'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokemonToJson(Pokemon instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'classification': instance.classification,
      'height': instance.height,
      'weight': instance.weight,
      'maxHP': instance.maxHp,
      'maxCP': instance.maxCp,
      'resistant': instance.resistant,
      'attacks': instance.attacks,
      'weaknesses': instance.weaknesses,
      'fleeRate': instance.fleeRate,
      'evolutionRequirements': instance.evolutionRequirements,
    };
