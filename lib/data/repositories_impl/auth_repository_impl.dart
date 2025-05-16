import 'package:quit_journey/data/datasources/auth_local_datasource.dart';
import 'package:quit_journey/domain/entities/user_profile_entity.dart';
import 'package:quit_journey/domain/repositories/auth_repository.dart';
import 'package:uuid/uuid.dart'; // 用于生成匿名用户 ID

// MVP 阶段，AuthRepositoryImpl 主要与 AuthLocalDataSource 交互
// 后续如果引入远程数据源 (如 Firebase Auth 或自定义后端)，则会在这里组合它们

class AuthRepositoryImpl implements AuthRepository {
  final AuthLocalDataSource localDataSource;
  // final AuthRemoteDataSource remoteDataSource; // 后续添加
  // final NetworkInfo networkInfo; // 后续添加，用于检查网络状态

  AuthRepositoryImpl({
    required this.localDataSource,
    // required this.remoteDataSource,
    // required this.networkInfo,
  });

  @override
  Future<bool> isOnboardingCompleted() async {
    return await localDataSource.isOnboardingCompleted();
  }

  @override
  Future<void> markOnboardingCompleted() async {
    await localDataSource.markOnboardingCompleted();
  }

  @override
  Future<UserProfileEntity?> getCurrentUserProfile() async {
    // MVP 阶段，简单从本地获取
    return await localDataSource.getUserProfile();
  }

  @override
  Future<UserProfileEntity> getOrCreateAnonymousUserProfile() async {
    UserProfileEntity? existingProfile = await localDataSource.getUserProfile();
    if (existingProfile != null && existingProfile.isAnonymous) {
      return existingProfile;
    }

    // 如果没有匿名用户或当前用户不是匿名的，则创建一个新的匿名用户
    String? anonymousId = await localDataSource.getAnonymousUserId();
    if (anonymousId == null) {
      anonymousId = const Uuid().v4();
      await localDataSource.saveAnonymousUserId(anonymousId);
    }

    final newUserProfile = UserProfileEntity(
      id: anonymousId,
      isAnonymous: true,
      createdAt: DateTime.now(),
    );
    await localDataSource.saveUserProfile(newUserProfile);
    return newUserProfile;
  }

  // --- MVP 暂不实现以下方法 ---
  // @override
  // Future<Either<Failure, UserProfileEntity>> registerWithEmail(String email, String password) async {
  //   // TODO: 实现邮箱注册逻辑 (调用 remoteDataSource)
  //   throw UnimplementedError();
  // }

  // @override
  // Future<Either<Failure, UserProfileEntity>> signInWithEmail(String email, String password) async {
  //   // TODO: 实现邮箱登录逻辑 (调用 remoteDataSource)
  //   throw UnimplementedError();
  // }

  // @override
  // Future<Either<Failure, void>> signOut() async {
  //   // TODO: 实现登出逻辑 (调用 remoteDataSource, 清理本地数据)
  //   await localDataSource.clearAuthData();
  //   return Right(null); // 假设成功
  // }
}
