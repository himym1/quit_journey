import 'package:quit_journey/data/datasources/quit_settings_local_datasource.dart';
import 'package:quit_journey/domain/entities/quit_settings_entity.dart';
import 'package:quit_journey/domain/repositories/quit_settings_repository.dart';
// import 'package:dartz/dartz.dart'; // 后续用于错误处理
// import 'package:quit_journey/core/error/failures.dart';
// import 'package:quit_journey/core/error/exceptions.dart'; // 用于捕获数据源异常

class QuitSettingsRepositoryImpl implements QuitSettingsRepository {
  final QuitSettingsLocalDataSource localDataSource;
  // final NetworkInfo networkInfo; // 如果需要网络同步
  QuitSettingsEntity? _currentSettings;

  QuitSettingsRepositoryImpl({
    required this.localDataSource,
    // required this.networkInfo,
  });

  @override
  QuitSettingsEntity get currentSettings {
    _currentSettings ??= localDataSource.getCurrentSettings();
    return _currentSettings!;
  }

  @override
  Future<QuitSettingsEntity?> getQuitSettings(String userId) async {
    try {
      return await localDataSource.getQuitSettings(userId);
    } catch (e) {
      print('Error getting quit settings: $e');
      return null;
    }
  }

  @override
  Future<void> saveQuitSettings(QuitSettingsEntity settings) async {
    try {
      await localDataSource.saveQuitSettings(settings);
      _currentSettings = settings;
    } catch (e) {
      print('Error saving quit settings: $e');
    }
  }

  @override
  Future<void> deleteQuitSettings(String userId) async {
    try {
      await localDataSource.deleteQuitSettings(userId);
      _currentSettings = null;
    } catch (e) {
      print('Error deleting quit settings: $e');
    }
  }
}
