import 'package:drift/drift.dart';
import 'package:quit_journey/data/datasources/local/app_database.dart';
import 'package:quit_journey/domain/entities/quit_settings_entity.dart';
import 'quit_settings_local_datasource.dart';

class QuitSettingsLocalDataSourceImpl implements QuitSettingsLocalDataSource {
  final AppDatabase database;

  QuitSettingsLocalDataSourceImpl({required this.database});

  @override
  Future<QuitSettingsEntity?> getQuitSettings(String userId) async {
    final tableData = await database.getQuitSetting(userId);
    if (tableData != null) {
      return database.mapQuitSettingTableDataToEntity(tableData);
    }
    return null;
  }

  @override
  Future<void> saveQuitSettings(QuitSettingsEntity settings) async {
    final companion = database.mapQuitSettingsEntityToCompanion(settings);
    await database.saveQuitSetting(companion);
  }

  @override
  Future<void> deleteQuitSettings(String userId) async {
    await database.deleteQuitSetting(userId);
  }
}
