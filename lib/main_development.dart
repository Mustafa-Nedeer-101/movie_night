import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_night/firebase_options.dart';
import 'package:movie_night/presentaion/app_view_model.dart';
import 'package:movie_night/presentaion/core/theme/app_theme.dart';
import 'package:movie_night/presentaion/features/authentication/view/sign_in_screen.dart';
import 'package:movie_night/utils/service_locator/get_it.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Initialize the service locator
  await setupServiceLocator();

  // Load the environment variables
  await dotenv.load(fileName: "assets/.env");

  // Run
  runApp(MyApp(
    viewModel: getIt<MainAppViewModel>(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.viewModel});

  final MainAppViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
        listenable: viewModel,
        builder: (context, child) {
          return MaterialApp(
            theme: viewModel.isDarkMode
                ? CustomAppTheme.darkTheme
                : CustomAppTheme.lightTheme,
            title: 'Flutter Demo',
            home: SignInScreen(),
          );
        });
  }
}
