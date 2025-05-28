part of 'theme_cubit.dart';

@immutable
sealed class ThemeState {}

final class ThemeSuccess extends ThemeState {
  final bool isDarkMode;
  ThemeSuccess({required this.isDarkMode});
}

final class ThemeFailure extends ThemeState {
  final String errorMessage;
  ThemeFailure({required this.errorMessage});
}
