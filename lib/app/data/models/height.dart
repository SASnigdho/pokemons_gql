import 'package:json_annotation/json_annotation.dart';

part 'height.g.dart';

@JsonSerializable()
class Height {
  String? minimum;
  String? maximum;

  Height({this.minimum, this.maximum});

  factory Height.fromJson(Map<String, dynamic> json) {
    return _$HeightFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HeightToJson(this);
}
