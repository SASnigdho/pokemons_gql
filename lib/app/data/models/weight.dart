import 'package:json_annotation/json_annotation.dart';

part 'weight.g.dart';

@JsonSerializable()
class Weight {
  String? minimum;
  String? maximum;

  Weight({this.minimum, this.maximum});

  factory Weight.fromJson(Map<String, dynamic> json) {
    return _$WeightFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WeightToJson(this);
}
