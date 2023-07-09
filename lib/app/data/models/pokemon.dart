import 'package:json_annotation/json_annotation.dart';

import 'attacks.dart';
import 'evolution_requirements.dart';
import 'height.dart';
import 'weight.dart';

part 'pokemon.g.dart';

@JsonSerializable()
class Pokemon {
  String? id;
  String? name;
  String? image;
  String? classification;
  Height? height;
  Weight? weight;
  @JsonKey(name: 'maxHP')
  int? maxHp;
  @JsonKey(name: 'maxCP')
  int? maxCp;
  List<String>? resistant;
  Attacks? attacks;
  List<String>? weaknesses;
  double? fleeRate;
  EvolutionRequirements? evolutionRequirements;

  Pokemon({
    this.id,
    this.name,
    this.image,
    this.classification,
    this.height,
    this.weight,
    this.maxHp,
    this.maxCp,
    this.resistant,
    this.attacks,
    this.weaknesses,
    this.fleeRate,
    this.evolutionRequirements,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return _$PokemonFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PokemonToJson(this);
}
