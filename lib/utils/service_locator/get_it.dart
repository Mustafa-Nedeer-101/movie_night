import 'package:get_it/get_it.dart';
import 'package:movie_night/data/repositories/auth_repo.dart';
import 'package:movie_night/data/repositories/theme_repo.dart';
import 'package:movie_night/data/services/firebase/firebase_auth_service.dart';
import 'package:movie_night/data/services/local/shared_preferences_service.dart';
import 'package:movie_night/presentaion/app_view_model.dart';
import 'package:movie_night/presentaion/features/authentication/bloc/sign_in/sign_in_cubit.dart';
import 'package:movie_night/presentaion/features/authentication/bloc/sign_up/sign_up_cubit.dart';

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

  // Auth
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<AuthRepo>(
      AuthRepo(firebaseAuthService: getIt<FirebaseAuthService>()));

  getIt.registerSingleton<SignInCubit>(SignInCubit(getIt<AuthRepo>()));
  getIt.registerSingleton<SignUpCubit>(SignUpCubit(getIt<AuthRepo>()));
}
