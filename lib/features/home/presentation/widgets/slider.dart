import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_night/core/constants/sized.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  int activeIndex = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  final List<String> movieImages = [
    'assets/images/content/slider/captain_america.jpg',
    'assets/images/content/slider/aladdin.jpg',
    'assets/images/content/slider/joker.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        // Slider
        CarouselSlider(
          items: movieImages.map((image) {
            return Image.asset(
              image,
              fit: BoxFit.fill,
              width: double.infinity,
            );
          }).toList(),
          carouselController: _controller,
          options: CarouselOptions(
            viewportFraction: 1.0,
            height: height * 0.42,
            autoPlay: true,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                activeIndex = index;
              });
            },
          ),
        ),

        Positioned(
          bottom: CSizes.md,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: movieImages.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: activeIndex == entry.key ? CSizes.md : CSizes.xs,
                  height: CSizes.xs,
                  margin: EdgeInsets.symmetric(horizontal: CSizes.xs),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(CSizes.sm),
                    color: activeIndex == entry.key ? Colors.red : Colors.grey,
                  ),
                ),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
