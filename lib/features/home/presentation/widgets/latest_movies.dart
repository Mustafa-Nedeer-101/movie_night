import 'package:flutter/material.dart';
import 'package:movie_night/core/common/widgets/cards/rounded_image.dart';
import 'package:movie_night/core/common/widgets/headers/section_header.dart';
import 'package:movie_night/core/constants/enums.dart';
import 'package:movie_night/core/constants/sized.dart';

class LatestMovies extends StatelessWidget {
  const LatestMovies({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> movieImages = [
      'assets/images/content/slider/captain_america.jpg',
      'assets/images/content/slider/aladdin.jpg',
      'assets/images/content/slider/joker.jpg',
    ];

    return Column(
      children: [
        SectionHeader(
          title: 'Latest Movies',
          tailWidget: TextButton(onPressed: () {}, child: Text('See all')),
        ),
        SizedBox(
          height: 150,
          child: ListView.separated(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => SizedBox(width: CSizes.sm),
            itemBuilder: (context, index) {
              return CustomRoundedImage(
                width: 100,
                image: movieImages[2 - index],
                imageType: ImageType.asset,
              );
            },
          ),
        )
      ],
    );
  }
}
