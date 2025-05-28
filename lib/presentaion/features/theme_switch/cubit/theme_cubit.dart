import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_night/data/repositories/theme_repo.dart';
import 'package:movie_night/utils/arch/result.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit(this.themeRepository) : super(ThemeSuccess(isDarkMode: false));

  final ThemeRepository themeRepository;

  /// Load the current theme setting from the repository
  load() async {
    try {
      final result = await themeRepository.isDarkMode();
      if (result is Ok<bool>) {
        emit(ThemeSuccess(isDarkMode: result.value));
      }
      return result;
    } on Exception catch (e) {
      emit(ThemeFailure(errorMessage: e.toString()));
    }
  }

  /// Toggle the theme setting
  toggle() async {
    try {
      final bool isDarkMode = (state as ThemeSuccess).isDarkMode;

      // Implement Optimistic State
      emit(ThemeSuccess(isDarkMode: !isDarkMode));

      await themeRepository.setDarkMode(!isDarkMode);
    } on Exception catch (e) {
      emit(ThemeFailure(errorMessage: e.toString()));
    }
  }
}
