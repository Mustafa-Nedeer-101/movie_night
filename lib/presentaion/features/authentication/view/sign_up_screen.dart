import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_night/presentaion/core/common/widgets/headers/app_bar_title.dart';
import 'package:movie_night/presentaion/features/authentication/bloc/sign_up/sign_up_cubit.dart';
import 'package:movie_night/presentaion/features/authentication/view/widgets/sign_up_form.dart';
import 'package:movie_night/presentaion/features/home/view/home_screen.dart';
import 'package:movie_night/utils/constants/colors.dart';
import 'package:movie_night/utils/helpers/handlers.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  SignUpScreenState createState() => SignUpScreenState();
}

class SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.firebaseNavy,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Palette.firebaseNavy,
        title: const AppBarTitle(
          sectionName: 'Authentication',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            bottom: 20.0,
          ),
          child: BlocListener<SignUpCubit, SignUpState>(
            listener: (context, state) {
              switch (state) {
                case SignUpInitial():
                  null;
                case SignUpLoading():
                  showDialog(
                    context: context,
                    builder: (context) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                case SignUpSuccess():
                  Navigator.of(context).pop();
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
                case SignUpFailure():
                  Handlers.handleErrorState(context, state.errorMessage);
              }
            },
            child: SignUpForm(),
          ),
        ),
      ),
    );
  }
}
