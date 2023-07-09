import 'package:json_annotation/json_annotation.dart';

import 'fast.dart';
import 'special.dart';

part 'attacks.g.dart';

@JsonSerializable()
class Attacks {
  List<Fast>? fast;
  List<Special>? special;

  Attacks({this.fast, this.special});

  factory Attacks.fromJson(Map<String, dynamic> json) {
    return _$AttacksFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AttacksToJson(this);
}
