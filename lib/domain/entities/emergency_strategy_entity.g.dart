// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emergency_strategy_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmergencyStrategyEntityImpl _$$EmergencyStrategyEntityImplFromJson(
  Map<String, dynamic> json,
) => _$EmergencyStrategyEntityImpl(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  category: json['category'] as String?,
);

Map<String, dynamic> _$$EmergencyStrategyEntityImplToJson(
  _$EmergencyStrategyEntityImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'category': instance.category,
};
