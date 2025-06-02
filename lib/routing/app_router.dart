import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_night/presentaion/features/authentication/bloc/sign_in/sign_in_cubit.dart';
import 'package:movie_night/presentaion/features/authentication/bloc/sign_up/sign_up_cubit.dart';
import 'package:movie_night/presentaion/features/authentication/view/sign_in_screen.dart';
import 'package:movie_night/presentaion/features/authentication/view/sign_up_screen.dart';
import 'package:movie_night/routing/routes.dart';
import 'package:movie_night/utils/service_locator/get_it.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    // Will be passed to any screen via the arguments parameter
    // ignore: unused_local_variable
    final arguments = settings.arguments;

    switch (settings.name) {
      // Onboarding
      // case Routes.onboardingScreen:
      //   return MaterialPageRoute(
      //     builder: (context) => const OnboardingScreen(),
      //   );

      // case Routes.redirectScreen:
      //   return MaterialPageRoute(
      //       builder: (context) => BlocProvider(
      //             create: (context) => RedirectBloc(),
      //             child: const RedirectScreen(),
      //           ));

      // Login
      case Routes.signInScreen:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => getIt<SignInCubit>(),
                  child: const SignInScreen(),
                ));

      // Signup
      case Routes.signUpScreen:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => getIt<SignUpCubit>(),
                  child: const SignUpScreen(),
                ));

      // case Routes.homeScreen:
      //   return MaterialPageRoute(
      //       builder: (context) => MultiBlocProvider(
      //             providers: [
      //               BlocProvider(create: (context) => SpecialitiesBloc()),
      //               BlocProvider(create: (context) => DoctorsBloc()),
      //             ],
      //             child: const HomePage(),
      //           ));

      default:
        return null;
    }
  }
}
