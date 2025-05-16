import 'package:freezed_annotation/freezed_annotation.dart';

part 'craving_record_entity.freezed.dart';
part 'craving_record_entity.g.dart';

@freezed
class CravingRecordEntity with _$CravingRecordEntity {
  const factory CravingRecordEntity({
    required String id,
    required DateTime occurredAt,
    required int intensity,
    String? triggerContext,
    String? copingStrategyUsed,
    required bool successfullyResisted,
  }) = _CravingRecordEntity;

  factory CravingRecordEntity.fromJson(Map<String, dynamic> json) =>
      _$CravingRecordEntityFromJson(json);
}
