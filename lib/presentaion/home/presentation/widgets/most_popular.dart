import 'package:flutter/material.dart';
import 'package:movie_night/presentaion/core/common/widgets/cards/rounded_image.dart';
import 'package:movie_night/presentaion/core/common/widgets/headers/section_header.dart';
import 'package:movie_night/utils/constants/enums.dart';
import 'package:movie_night/utils/constants/sized.dart';

class MostPopularMovies extends StatelessWidget {
  const MostPopularMovies({super.key});

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
          title: 'Most Popular',
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
                image: movieImages[index],
                imageType: ImageType.asset,
              );
            },
          ),
        )
      ],
    );
  }
}
