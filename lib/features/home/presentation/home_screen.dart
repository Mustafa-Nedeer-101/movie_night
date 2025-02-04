import 'package:flutter/material.dart';
import 'package:movie_night/features/home/presentation/widgets/slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Slider
        HomeSlider(),
      ],
    );
  }
}
