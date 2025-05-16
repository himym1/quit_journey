import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:quit_journey/domain/entities/quit_settings_entity.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

part 'app_database.g.dart';

// 定义 QuitSettings 表
@DataClassName('QuitSettingTableData') // Drift 生成的数据类名
class QuitSettingsTable extends Table {
  TextColumn get userId => text()(); // 用户ID，设为唯一以方便查询和更新
  DateTimeColumn get quitDateTime => dateTime()();
  IntColumn get dailyCigarettes => integer()();
  RealColumn get packPrice => real()();
  IntColumn get smokingYears => integer().nullable()();
  TextColumn get quitReason => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {userId}; // 将 userId 设为主键
}

@DriftDatabase(tables: [QuitSettingsTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  AppDatabase.test(QueryExecutor e) : super(e); // 用于测试

  @override
  int get schemaVersion => 1;

  // --- QuitSettingsTable DAO Methods ---

  Future<QuitSettingTableData?> getQuitSetting(String userId) {
    return (select(quitSettingsTable)
      ..where((tbl) => tbl.userId.equals(userId))).getSingleOrNull();
  }

  Future<int> saveQuitSetting(QuitSettingsTableCompanion entry) {
    // insertOnConflictUpdate 会在冲突时更新 (基于主键 userId)
    return into(quitSettingsTable).insertOnConflictUpdate(entry);
  }

  Future<int> deleteQuitSetting(String userId) {
    return (delete(quitSettingsTable)
      ..where((tbl) => tbl.userId.equals(userId))).go();
  }

  // --- Entity Mappers (可选，但推荐用于保持领域层纯净) ---
  // (如果 QuitSettingTableData 和 QuitSettingsEntity 结构完全一致，可以考虑直接使用 TableData)
  // (但通常会有细微差别或需要转换，所以提供 mapper 是好习惯)

  QuitSettingsEntity mapQuitSettingTableDataToEntity(
    QuitSettingTableData data,
  ) {
    return QuitSettingsEntity(
      userId: data.userId,
      quitDateTime: data.quitDateTime,
      dailyCigarettes: data.dailyCigarettes,
      packPrice: data.packPrice,
      smokingYears: data.smokingYears,
      quitReason: data.quitReason,
      createdAt: data.createdAt,
      updatedAt: data.updatedAt,
    );
  }

  QuitSettingsTableCompanion mapQuitSettingsEntityToCompanion(
    QuitSettingsEntity entity,
  ) {
    return QuitSettingsTableCompanion(
      userId: Value(entity.userId),
      quitDateTime: Value(entity.quitDateTime),
      dailyCigarettes: Value(entity.dailyCigarettes),
      packPrice: Value(entity.packPrice),
      smokingYears:
          entity.smokingYears == null
              ? const Value.absent()
              : Value(entity.smokingYears!),
      quitReason:
          entity.quitReason == null
              ? const Value.absent()
              : Value(entity.quitReason!),
      createdAt: Value(entity.createdAt),
      updatedAt:
          entity.updatedAt == null
              ? const Value.absent()
              : Value(entity.updatedAt!),
    );
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'quit_journey_db.sqlite'));

    // Also work around limitations on old Android versions
    if (Platform.isAndroid) {
      await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    }

    return NativeDatabase.createInBackground(file);
  });
}
