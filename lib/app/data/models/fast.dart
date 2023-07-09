import 'package:json_annotation/json_annotation.dart';

part 'fast.g.dart';

@JsonSerializable()
class Fast {
  String? name;
  String? type;
  int? damage;

  Fast({this.name, this.type, this.damage});

  factory Fast.fromJson(Map<String, dynamic> json) => _$FastFromJson(json);

  Map<String, dynamic> toJson() => _$FastToJson(this);
}
