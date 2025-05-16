// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quit_settings_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuitSettingsEntityImpl _$$QuitSettingsEntityImplFromJson(
  Map<String, dynamic> json,
) => _$QuitSettingsEntityImpl(
  userId: json['userId'] as String,
  quitDateTime: DateTime.parse(json['quitDateTime'] as String),
  dailyCigarettes: (json['dailyCigarettes'] as num).toInt(),
  packPrice: (json['packPrice'] as num).toDouble(),
  smokingYears: (json['smokingYears'] as num?)?.toInt(),
  quitReason: json['quitReason'] as String?,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt:
      json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$$QuitSettingsEntityImplToJson(
  _$QuitSettingsEntityImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'quitDateTime': instance.quitDateTime.toIso8601String(),
  'dailyCigarettes': instance.dailyCigarettes,
  'packPrice': instance.packPrice,
  'smokingYears': instance.smokingYears,
  'quitReason': instance.quitReason,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};
