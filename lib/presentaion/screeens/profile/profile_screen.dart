import 'package:flutter/material.dart';
import 'package:movie_night/data/repositories/theme/theme_repo.dart';
import 'package:movie_night/presentaion/features/subscribe/sub.dart';
import 'package:movie_night/presentaion/features/theme_switch/view/theme_switch.dart';
import 'package:movie_night/presentaion/features/theme_switch/view_model/theme_switch_view_model.dart';
import 'package:movie_night/utils/service_locator/get_it.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // Theme switch
        Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          ThemeSwitch(
            viewmodel: ThemeSwitchViewModel(getIt<ThemeRepository>()),
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
