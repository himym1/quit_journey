import 'package:drift/drift.dart';
import 'package:quit_journey/data/datasources/local/app_database.dart';
import 'package:quit_journey/domain/entities/quit_settings_entity.dart';
import 'quit_settings_local_datasource.dart';

class QuitSettingsLocalDataSourceImpl implements QuitSettingsLocalDataSource {
  final AppDatabase database;
  QuitSettingsEntity? _cachedSettings;

  QuitSettingsLocalDataSourceImpl({required this.database});

  @override
  QuitSettingsEntity? getCurrentSettings() => _cachedSettings;

  @override
  Future<QuitSettingsEntity?> getQuitSettings(String userId) async {
    _cachedSettings ??= await _getFromDatabase(userId);
    return _cachedSettings;
  }

  Future<QuitSettingsEntity?> _getFromDatabase(String userId) async {
    final tableData = await database.getQuitSetting(userId);
    return tableData != null
        ? database.mapQuitSettingTableDataToEntity(tableData)
        : null;
  }

  @override
  Future<void> saveQuitSettings(QuitSettingsEntity settings) async {
    final companion = database.mapQuitSettingsEntityToCompanion(settings);
    await database.saveQuitSetting(companion);
    _cachedSettings = settings;
  }

  @override
  Future<void> deleteQuitSettings(String userId) async {
    await database.deleteQuitSetting(userId);
    _cachedSettings = null;
  }
}
