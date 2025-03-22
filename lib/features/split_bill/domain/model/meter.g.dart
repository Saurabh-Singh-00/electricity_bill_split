// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeterImpl _$$MeterImplFromJson(Map<String, dynamic> json) => _$MeterImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      unitConsumed: (json['unit_consumed'] as num).toInt(),
      type: $enumDecode(_$MeterTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$MeterImplToJson(_$MeterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'unit_consumed': instance.unitConsumed,
      'type': _$MeterTypeEnumMap[instance.type]!,
    };

const _$MeterTypeEnumMap = {
  MeterType.main: 'main',
  MeterType.sub: 'sub',
};
