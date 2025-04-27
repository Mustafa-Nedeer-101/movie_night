import 'package:flutter/foundation.dart';
import 'package:movie_night/data/repositories/theme/theme_repo.dart';
import 'package:movie_night/utils/arch/command.dart';
import 'package:movie_night/utils/arch/result.dart';

class ThemeSwitchViewModel extends ChangeNotifier {
  ThemeSwitchViewModel(this._themeRepository) {
    load = Command0(_load)..execute();
    toggle = Command0(_toggle);
  }

  final ThemeRepository _themeRepository;

  bool _isDarkMode = false;

  /// If true show dark mode
  bool get isDarkMode => _isDarkMode;

  late Command0 load;

  late Command0 toggle;

  /// Load the current theme setting from the repository
  Future<Result<void>> _load() async {
    try {
      final result = await _themeRepository.isDarkMode();
      if (result is Ok<bool>) {
        _isDarkMode = result.value;
      }
      return result;
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      notifyListeners();
    }
  }

  /// Toggle the theme setting
  Future<Result<void>> _toggle() async {
    try {
      _isDarkMode = !_isDarkMode;
      return await _themeRepository.setDarkMode(_isDarkMode);
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      notifyListeners();
    }
  }
}
