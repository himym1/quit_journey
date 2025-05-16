import 'package:quit_journey/domain/entities/user_profile_entity.dart';
import 'package:quit_journey/domain/repositories/auth_repository.dart';

class GetOrCreateAnonymousUser {
  final AuthRepository repository;

  GetOrCreateAnonymousUser(this.repository);

  Future<UserProfileEntity> call() async {
    return await repository.getOrCreateAnonymousUserProfile();
  }
}
