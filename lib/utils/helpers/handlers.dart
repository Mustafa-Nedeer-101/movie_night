import 'package:flutter/material.dart';
import 'package:movie_night/utils/constants/colors.dart';
import 'package:movie_night/utils/helpers/extensions.dart';
import 'package:movie_night/utils/theme/text_styles.dart';

class Handlers {
  const Handlers._();

  // Handle Error State
  static handleErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          size: 32,
        ),
        iconColor: Palette.error,
        content: Text(
          error,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: TextStyles.font14PrimaryWeightSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
