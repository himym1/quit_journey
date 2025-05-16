// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_milestone_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HealthMilestoneImpl _$$HealthMilestoneImplFromJson(
  Map<String, dynamic> json,
) => _$HealthMilestoneImpl(
  triggerMinutes: (json['triggerMinutes'] as num).toInt(),
  medicalIndicator: json['medicalIndicator'] as String,
  description: json['description'] as String,
);

Map<String, dynamic> _$$HealthMilestoneImplToJson(
  _$HealthMilestoneImpl instance,
) => <String, dynamic>{
  'triggerMinutes': instance.triggerMinutes,
  'medicalIndicator': instance.medicalIndicator,
  'description': instance.description,
};
