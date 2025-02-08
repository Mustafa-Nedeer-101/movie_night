import 'package:flutter/material.dart';
import 'package:movie_night/core/constants/sized.dart';
import 'package:movie_night/features/home/presentation/widgets/catagories_list.dart';
import 'package:movie_night/features/home/presentation/widgets/latest_movies.dart';
import 'package:movie_night/features/home/presentation/widgets/most_popular.dart';
import 'package:movie_night/features/home/presentation/widgets/slider.dart';
import 'package:movie_night/features/home/presentation/widgets/top_ratings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // Slider
        HomeSlider(),

        SizedBox(height: CSizes.spaceBtwItems),

        // Movies
        Padding(
          padding: const EdgeInsets.only(left: CSizes.sm),
          child: Column(
            children: [
              CatagoriesList(),
              SizedBox(height: CSizes.spaceBtwItems),
              MostPopularMovies(),
              SizedBox(height: CSizes.spaceBtwItems),
              LatestMovies(),
              SizedBox(height: CSizes.spaceBtwItems),
              TopRatings(),
            ],
          ),
        ),
      ],
    );
  }
}
