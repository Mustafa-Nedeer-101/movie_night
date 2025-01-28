import 'package:flutter/material.dart';
import 'package:movie_night/core/constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CColors.white,
      body: Container(
          decoration: BoxDecoration(color: CColors.primaryBackground),
          padding: const EdgeInsets.all(200),
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                    const Color.fromARGB(229, 255, 5, 1))),
            child: Text('Click Me'),
          )),
    );
  }
}
