import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:quit_journey/domain/entities/user_profile_entity.dart';
import 'auth_local_datasource.dart';

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final SharedPreferences sharedPreferences;

  AuthLocalDataSourceImpl({required this.sharedPreferences});

  static const String _onboardingCompletedKey = 'onboarding_completed';
  static const String _userProfileKey = 'user_profile';
  static const String _anonymousUserIdKey = 'anonymous_user_id';

  @override
  Future<bool> isOnboardingCompleted() async {
    return sharedPreferences.getBool(_onboardingCompletedKey) ?? false;
  }

  @override
  Future<void> markOnboardingCompleted() async {
    await sharedPreferences.setBool(_onboardingCompletedKey, true);
  }

  @override
  Future<UserProfileEntity?> getUserProfile() async {
    final jsonString = sharedPreferences.getString(_userProfileKey);
    if (jsonString != null) {
      return UserProfileEntity.fromJson(
        jsonDecode(jsonString) as Map<String, dynamic>,
      );
    }
    return null;
  }

  @override
  Future<void> saveUserProfile(UserProfileEntity userProfile) async {
    await sharedPreferences.setString(
      _userProfileKey,
      jsonEncode(userProfile.toJson()),
    );
  }

  @override
  Future<String?> getAnonymousUserId() async {
    return sharedPreferences.getString(_anonymousUserIdKey);
  }

  @override
  Future<void> saveAnonymousUserId(String userId) async {
    await sharedPreferences.setString(_anonymousUserIdKey, userId);
  }

  @override
  Future<void> clearAuthData() async {
    await sharedPreferences.remove(_onboardingCompletedKey);
    await sharedPreferences.remove(_userProfileKey);
    await sharedPreferences.remove(_anonymousUserIdKey);
    // 如果有其他认证相关数据，也在这里清除
  }
}
