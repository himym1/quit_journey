import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_entity.freezed.dart';
part 'user_profile_entity.g.dart';

@freezed
class UserProfileEntity with _$UserProfileEntity {
  const factory UserProfileEntity({
    required String id, // 唯一标识，匿名用户本地生成，注册用户可来自后端
    required bool isAnonymous,
    String? email, // 邮箱，注册用户
    // String? phone, // 手机号，MVP 阶段可暂不实现详细逻辑
    required DateTime createdAt, // 创建时间
    // String? displayName, // 显示名称，可选
  }) = _UserProfileEntity;

  factory UserProfileEntity.fromJson(Map<String, dynamic> json) =>
      _$UserProfileEntityFromJson(json);
}
