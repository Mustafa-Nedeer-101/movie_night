import 'package:flutter/material.dart';
import 'package:movie_night/utils/constants/sized.dart';
import 'package:movie_night/presentaion/features/home/view/widgets/catagories_list.dart';
import 'package:movie_night/presentaion/features/home/view/widgets/latest_movies.dart';
import 'package:movie_night/presentaion/features/home/view/widgets/most_popular.dart';
import 'package:movie_night/presentaion/features/home/view/widgets/slider.dart';
import 'package:movie_night/presentaion/features/home/view/widgets/top_ratings.dart';

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
