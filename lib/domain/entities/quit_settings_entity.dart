import 'package:freezed_annotation/freezed_annotation.dart';

part 'quit_settings_entity.freezed.dart';
part 'quit_settings_entity.g.dart';

@freezed
class QuitSettingsEntity with _$QuitSettingsEntity {
  const QuitSettingsEntity._(); // 添加私有空构造函数以支持 getters

  const factory QuitSettingsEntity({
    required String userId,
    required DateTime quitDateTime,
    required int dailyCigarettes,
    required double packPrice,
    required int cigarettesPerPack, // 明确每包香烟支数
    required double dailyCigaretteCost,
    required DateTime quitStartTime,
    required int nicotineAddictionLevel,
    int? smokingYears,
    String? quitReason,
    required DateTime createdAt,
    DateTime? updatedAt,
  }) = _QuitSettingsEntity;

  double get perCigaretteCost => packPrice / cigarettesPerPack;
  double get dailyNicotineIntake => dailyCigarettes * 0.8;

  factory QuitSettingsEntity.fromJson(Map<String, dynamic> json) =>
      _$QuitSettingsEntityFromJson(json);
}
