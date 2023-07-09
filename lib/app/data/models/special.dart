import 'package:json_annotation/json_annotation.dart';

part 'special.g.dart';

@JsonSerializable()
class Special {
  String? name;
  String? type;
  int? damage;

  Special({this.name, this.type, this.damage});

  factory Special.fromJson(Map<String, dynamic> json) {
    return _$SpecialFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SpecialToJson(this);
}
