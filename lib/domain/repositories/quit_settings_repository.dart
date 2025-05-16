import 'package:quit_journey/domain/entities/quit_settings_entity.dart';
// import 'package:dartz/dartz.dart';
// import 'package:quit_journey/core/error/failures.dart';

abstract class QuitSettingsRepository {
  /// 获取指定用户的戒烟设置
  /// 返回 Either<Failure, QuitSettingsEntity?>
  Future<QuitSettingsEntity?> getQuitSettings(String userId);

  /// 保存用户的戒烟设置 (新增或更新)
  /// 返回 Either<Failure, void>
  Future<void> saveQuitSettings(QuitSettingsEntity settings);

  /// 删除指定用户的戒烟设置
  /// 返回 Either<Failure, void>
  Future<void> deleteQuitSettings(String userId);
}
