// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileEntityImpl _$$UserProfileEntityImplFromJson(
  Map<String, dynamic> json,
) => _$UserProfileEntityImpl(
  id: json['id'] as String,
  isAnonymous: json['isAnonymous'] as bool,
  email: json['email'] as String?,
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$$UserProfileEntityImplToJson(
  _$UserProfileEntityImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'isAnonymous': instance.isAnonymous,
  'email': instance.email,
  'createdAt': instance.createdAt.toIso8601String(),
};
