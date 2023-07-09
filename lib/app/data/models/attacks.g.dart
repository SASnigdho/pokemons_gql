// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attacks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Attacks _$AttacksFromJson(Map<String, dynamic> json) => Attacks(
      fast: (json['fast'] as List<dynamic>?)
          ?.map((e) => Fast.fromJson(e as Map<String, dynamic>))
          .toList(),
      special: (json['special'] as List<dynamic>?)
          ?.map((e) => Special.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AttacksToJson(Attacks instance) => <String, dynamic>{
      'fast': instance.fast,
      'special': instance.special,
    };
