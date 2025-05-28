import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_night/data/repositories/theme_repo.dart';
import 'package:movie_night/presentaion/features/subscribe/sub.dart';
import 'package:movie_night/presentaion/features/theme_switch/cubit/theme_cubit.dart';
import 'package:movie_night/presentaion/features/theme_switch/view/theme_switch.dart';
import 'package:movie_night/utils/service_locator/get_it.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // Theme switch
        Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          BlocProvider(
            create: (context) => ThemeCubit(getIt<ThemeRepository>()),
            child: ThemeSwitch(),
          ),
        ]),

        const SizedBox(height: 20),

        SubscribeButton(
          viewModel: SubscribeButtonViewModel(
            subscriptionRepository: SubscriptionRepository(),
          ),
        ),
      ],
    );
  }
}
