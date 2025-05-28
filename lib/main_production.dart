import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_night/firebase_options.dart';
import 'package:movie_night/presentaion/core/theme/app_theme.dart';
import 'package:movie_night/presentaion/navigation.dart';
import 'package:movie_night/utils/service_locator/get_it.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Initialize the service locator
  await setupServiceLocator();

  await dotenv.load(fileName: "assets/.env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomAppTheme.lightTheme,
      darkTheme: CustomAppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      home: const BottomNavigation(),
    );
  }
}
