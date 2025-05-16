import 'package:freezed_annotation/freezed_annotation.dart';

part 'quit_settings_entity.freezed.dart';
part 'quit_settings_entity.g.dart';

@freezed
class QuitSettingsEntity with _$QuitSettingsEntity {
  const factory QuitSettingsEntity({
    required String userId, // 关联的用户 ID
    required DateTime quitDateTime, // 戒烟开始日期与时间
    required int dailyCigarettes, // 每日吸烟量
    required double packPrice, // 每包香烟价格
    int? smokingYears, // 烟龄（可选）
    String? quitReason, // 我的戒烟宣言/理由
    required DateTime createdAt, // 设置创建时间
    DateTime? updatedAt, // 设置更新时间
  }) = _QuitSettingsEntity;

  factory QuitSettingsEntity.fromJson(Map<String, dynamic> json) =>
      _$QuitSettingsEntityFromJson(json);
}
