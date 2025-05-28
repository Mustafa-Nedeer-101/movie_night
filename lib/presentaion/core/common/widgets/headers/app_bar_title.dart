import 'package:flutter/material.dart';
import 'package:movie_night/utils/constants/colors.dart';
import 'package:movie_night/utils/constants/images.dart';

class AppBarTitle extends StatelessWidget {
  final String sectionName;

  const AppBarTitle({
    super.key,
    required this.sectionName,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          Images.firebaseLogo,
          height: 20,
        ),
        const SizedBox(width: 8),
        Flexible(
          child: Text(
            'FlutterFire',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Palette.firebaseYellow,
              fontSize: 18,
            ),
          ),
        ),
        Flexible(
          child: Text(
            ' $sectionName',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Palette.firebaseOrange,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
