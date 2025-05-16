import 'package:quit_journey/domain/entities/craving_record_entity.dart';
import 'package:quit_journey/domain/repositories/craving_repository.dart';

class RecordCravingUseCase {
  final CravingRepository _repository;

  RecordCravingUseCase(this._repository);

  Future<void> call(CravingRecordEntity craving) async {
    return _repository.recordCraving(craving);
  }
}
