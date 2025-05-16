import 'package:quit_journey/domain/entities/user_profile_entity.dart';
// 考虑引入 Either 或类似的结果类型来处理成功/失败
// import 'package:dartz/dartz.dart';
// import 'package:quit_journey/core/error/failures.dart';

abstract class AuthRepository {
  /// 检查用户是否已完成初始设置
  Future<bool> isOnboardingCompleted();

  /// 将初始设置状态标记为已完成
  Future<void> markOnboardingCompleted();

  /// 获取当前用户 Profile，如果不存在则返回 null
  /// MVP 阶段，匿名用户直接在本地创建并返回
  Future<UserProfileEntity?> getCurrentUserProfile();

  /// 创建或获取匿名用户 Profile
  Future<UserProfileEntity> getOrCreateAnonymousUserProfile();

  /// （MVP 暂不实现）使用邮箱注册
  // Future<Either<Failure, UserProfileEntity>> registerWithEmail(String email, String password);

  /// （MVP 暂不实现）使用邮箱登录
  // Future<Either<Failure, UserProfileEntity>> signInWithEmail(String email, String password);

  /// （MVP 暂不实现）登出
  // Future<Either<Failure, void>> signOut();
}
