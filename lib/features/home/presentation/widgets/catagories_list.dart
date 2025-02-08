import 'package:flutter/material.dart';
import 'package:movie_night/core/common/widgets/headers/section_header.dart';
import 'package:movie_night/core/constants/colors.dart';
import 'package:movie_night/core/constants/sized.dart';

class CatagoriesList extends StatefulWidget {
  const CatagoriesList({super.key});

  @override
  State<CatagoriesList> createState() => _CatagoriesListState();
}

class _CatagoriesListState extends State<CatagoriesList> {
  final List<String> _catagories = ['All', 'Action', 'Comedy', 'Romance'];

  int _index = 0;

  void _onTap(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(title: 'Catagories'),
        SizedBox(height: CSizes.spaceBtwItems),
        SizedBox(
          width: double.infinity,
          height: 30,
          child: ListView.separated(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => SizedBox(width: CSizes.sm),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => _onTap(index),
                child: Container(
                  width: CSizes.catagoryWidth,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: _index == index
                          ? CColors.primaryColor
                          : CColors.surfaceColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(CSizes.catagoryRadius),
                      )),
                  child: Text(_catagories[index]),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
