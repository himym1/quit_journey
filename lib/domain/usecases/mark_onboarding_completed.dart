import 'package:quit_journey/domain/repositories/auth_repository.dart';

class MarkOnboardingCompleted {
  final AuthRepository repository;

  MarkOnboardingCompleted(this.repository);

  Future<void> call() async {
    await repository.markOnboardingCompleted();
  }
}
