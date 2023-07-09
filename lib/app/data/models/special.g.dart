// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'special.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Special _$SpecialFromJson(Map<String, dynamic> json) => Special(
      name: json['name'] as String?,
      type: json['type'] as String?,
      damage: json['damage'] as int?,
    );

Map<String, dynamic> _$SpecialToJson(Special instance) => <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'damage': instance.damage,
    };
