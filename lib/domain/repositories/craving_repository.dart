import '../entities/craving_record_entity.dart';
import '../entities/emergency_strategy_entity.dart';

abstract class CravingRepository {
  Future<void> recordCraving(CravingRecordEntity craving);
  Stream<List<CravingRecordEntity>> watchAllCravings();
  Future<List<EmergencyStrategyEntity>> getEmergencyStrategies();
  Future<EmergencyStrategyEntity?> getEmergencyStrategyById(String id);
  // Future<void> addEmergencyStrategy(EmergencyStrategyEntity strategy); // 根据设计文档，可能需要添加
  // Future<void> updateEmergencyStrategy(EmergencyStrategyEntity strategy); // 根据设计文档，可能需要添加
  // Future<void> deleteEmergencyStrategy(String id); // 根据设计文档，可能需要添加
}
