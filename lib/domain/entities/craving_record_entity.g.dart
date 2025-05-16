// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'craving_record_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CravingRecordEntityImpl _$$CravingRecordEntityImplFromJson(
  Map<String, dynamic> json,
) => _$CravingRecordEntityImpl(
  id: json['id'] as String,
  occurredAt: DateTime.parse(json['occurredAt'] as String),
  intensity: (json['intensity'] as num).toInt(),
  triggerContext: json['triggerContext'] as String?,
  copingStrategyUsed: json['copingStrategyUsed'] as String?,
  successfullyResisted: json['successfullyResisted'] as bool,
);

Map<String, dynamic> _$$CravingRecordEntityImplToJson(
  _$CravingRecordEntityImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'occurredAt': instance.occurredAt.toIso8601String(),
  'intensity': instance.intensity,
  'triggerContext': instance.triggerContext,
  'copingStrategyUsed': instance.copingStrategyUsed,
  'successfullyResisted': instance.successfullyResisted,
};
