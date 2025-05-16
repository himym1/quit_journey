import 'package:quit_journey/domain/entities/quit_settings_entity.dart';

abstract class QuitSettingsLocalDataSource {
  /// 获取指定用户的戒烟设置
  Future<QuitSettingsEntity?> getQuitSettings(String userId);

  /// 保存用户的戒烟设置 (新增或更新)
  Future<void> saveQuitSettings(QuitSettingsEntity settings);

  /// 删除指定用户的戒烟设置
  Future<void> deleteQuitSettings(String userId);
}
