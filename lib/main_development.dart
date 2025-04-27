import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_night/presentaion/app_view_model.dart';
import 'package:movie_night/presentaion/core/theme/app_theme.dart';
import 'package:movie_night/presentaion/navigation.dart';
import 'package:movie_night/utils/service_locator/get_it.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setupServiceLocator();

  await dotenv.load(fileName: "assets/.env");
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
            home: const BottomNavigation(),
          );
        });
  }
}
