import 'package:quit_journey/domain/entities/user_profile_entity.dart';

abstract class AuthLocalDataSource {
  /// 检查用户是否已完成初始设置
  Future<bool> isOnboardingCompleted();

  /// 将初始设置状态标记为已完成
  Future<void> markOnboardingCompleted();

  /// 获取当前用户的 Profile，如果不存在则返回 null
  Future<UserProfileEntity?> getUserProfile();

  /// 保存用户 Profile
  Future<void> saveUserProfile(UserProfileEntity userProfile);

  /// 获取匿名用户 ID，如果不存在则返回 null
  Future<String?> getAnonymousUserId();

  /// 保存匿名用户 ID
  Future<void> saveAnonymousUserId(String userId);

  /// 清除所有认证相关的本地数据 (例如，在用户登出或切换账户时)
  Future<void> clearAuthData();
}
