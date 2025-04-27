import 'package:logger/logger.dart';
import 'package:movie_night/utils/arch/result.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static const _tokenKey = 'TOKEN';
  final _log = Logger();
  static const String _kDartMode = 'darkMode';

  Future<Result<String?>> fetchToken() async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      return Result.ok(sharedPreferences.getString(_tokenKey));
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<void>> saveToken(String? token) async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      if (token == null) {
        _log.d('Removed token');
        await sharedPreferences.remove(_tokenKey);
      } else {
        _log.d('Replaced token');
        await sharedPreferences.setString(_tokenKey, token);
      }
      return const Result.ok(null);
    } on Exception catch (e) {
      _log.w('Failed to set token', error: e);
      return Result.error(e);
    }
  }

  Future<void> setDarkMode(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_kDartMode, value);
  }

  Future<bool> isDarkMode() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_kDartMode) ?? false;
  }
}
