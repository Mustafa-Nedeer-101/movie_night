import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_night/presentaion/features/theme_switch/cubit/theme_cubit.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        switch (state) {
          case ThemeSuccess():
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  const Text('Dark Mode'),
                  Switch(
                    value: state.isDarkMode,
                    onChanged: (_) {
                      context.read<ThemeCubit>().toggle();
                    },
                  ),
                ],
              ),
            );

          case ThemeFailure():
            return Icon(
              Icons.error,
              color: Colors.red,
            );
        }
      },
    );
  }
}
