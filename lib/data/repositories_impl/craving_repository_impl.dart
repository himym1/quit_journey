import 'package:drift/drift.dart'; // Keep as is, assuming drift is a package dependency
import '../datasources/local/app_database.dart';
import '../../domain/entities/craving_record_entity.dart';
import '../../domain/entities/emergency_strategy_entity.dart';
import '../../domain/repositories/craving_repository.dart';

class CravingRepositoryImpl implements CravingRepository {
  final AppDatabase database;

  CravingRepositoryImpl(this.database);

  // --- Data Mapping Functions ---
  CravingRecordEntity _mapCravingRecordToEntity(CravingRecord data) {
    return CravingRecordEntity(
      id: data.id,
      occurredAt: data.occurredAt,
      intensity: data.intensity,
      triggerContext: data.triggerContext,
      copingStrategyUsed: data.copingStrategyUsed,
      successfullyResisted: data.successfullyResisted,
    );
  }

  CravingRecordsCompanion _mapCravingEntityToCompanion(
    CravingRecordEntity entity,
  ) {
    return CravingRecordsCompanion(
      id: Value(entity.id),
      occurredAt: Value(entity.occurredAt),
      intensity: Value(entity.intensity),
      triggerContext:
          entity.triggerContext == null
              ? const Value.absent()
              : Value(entity.triggerContext!),
      copingStrategyUsed:
          entity.copingStrategyUsed == null
              ? const Value.absent()
              : Value(entity.copingStrategyUsed!),
      successfullyResisted: Value(entity.successfullyResisted),
    );
  }

  EmergencyStrategyEntity _mapEmergencyStrategyToEntity(
    EmergencyStrategy data,
  ) {
    return EmergencyStrategyEntity(
      id: data.id,
      title: data.title,
      description: data.description,
      category: data.category,
    );
  }

  // EmergencyStrategiesCompanion _mapEmergencyStrategyEntityToCompanion(EmergencyStrategyEntity entity) {
  //   return EmergencyStrategiesCompanion(
  //     id: Value(entity.id),
  //     title: Value(entity.title),
  //     description: Value(entity.description),
  //     category: entity.category == null ? const Value.absent() : Value(entity.category!),
  //   );
  // }

  // --- CravingRepository Implementation ---
  @override
  Future<void> recordCraving(CravingRecordEntity craving) async {
    final companion = _mapCravingEntityToCompanion(craving);
    await database.into(database.cravingRecords).insert(companion);
  }

  @override
  Stream<List<CravingRecordEntity>> watchAllCravings() {
    return database.select(database.cravingRecords).watch().map((rows) {
      return rows.map((row) => _mapCravingRecordToEntity(row)).toList();
    });
  }

  @override
  Future<List<EmergencyStrategyEntity>> getEmergencyStrategies() async {
    final strategies =
        await database.select(database.emergencyStrategies).get();
    return strategies.map((s) => _mapEmergencyStrategyToEntity(s)).toList();
  }

  @override
  Future<EmergencyStrategyEntity?> getEmergencyStrategyById(String id) async {
    final strategy =
        await (database.select(database.emergencyStrategies)
          ..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    return strategy == null ? null : _mapEmergencyStrategyToEntity(strategy);
  }
}
