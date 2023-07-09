import 'package:json_annotation/json_annotation.dart';

part 'evolution_requirements.g.dart';

@JsonSerializable()
class EvolutionRequirements {
  String? name;
  int? amount;

  EvolutionRequirements({this.name, this.amount});

  factory EvolutionRequirements.fromJson(Map<String, dynamic> json) {
    return _$EvolutionRequirementsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EvolutionRequirementsToJson(this);
}
