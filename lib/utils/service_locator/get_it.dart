import 'package:get_it/get_it.dart';
import 'package:movie_night/data/repositories/theme/theme_repo.dart';
import 'package:movie_night/data/services/local/shared_preferences_service.dart';
import 'package:movie_night/presentaion/app_view_model.dart';
import 'package:movie_night/presentaion/features/theme_switch/view_model/theme_switch_view_model.dart';

final getIt = GetIt.instance;

setupServiceLocator() async {
  // getIt.registerSingleton<ThemeRepository>(ThemeRepository());
  // getIt.registerSingleton<SubscriptionRepository>(SubscriptionRepository());
  // getIt.registerSingleton<MainAppViewModel>(MainAppViewModel(getIt<ThemeRepository>()));

  getIt.registerSingleton<SharedPreferencesService>(SharedPreferencesService());
  getIt.registerSingleton<ThemeRepository>(
      ThemeRepository(getIt<SharedPreferencesService>()));
  getIt.registerSingleton<MainAppViewModel>(
      MainAppViewModel(getIt<ThemeRepository>()));
  getIt.registerSingleton<ThemeSwitchViewModel>(
      ThemeSwitchViewModel(getIt<ThemeRepository>()));
}
