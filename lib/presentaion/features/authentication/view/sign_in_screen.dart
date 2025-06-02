import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_night/presentaion/features/authentication/bloc/sign_in/sign_in_cubit.dart';
import 'package:movie_night/presentaion/features/authentication/view/widgets/sign_in_form.dart';
import 'package:movie_night/presentaion/features/home/view/home_screen.dart';
import 'package:movie_night/utils/constants/colors.dart';
import 'package:movie_night/utils/constants/images.dart';
import 'package:movie_night/utils/helpers/handlers.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  SignInScreenState createState() => SignInScreenState();
}

class SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.firebaseNavy,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 16.0,
                left: 16.0,
                right: 16.0,
                bottom: 20.0,
              ),
              child: ListView(children: [
                Row(),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      Images.firebaseLogo,
                      height: 120,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'FlutterFire',
                      style: TextStyle(
                        color: Palette.firebaseYellow,
                        fontSize: 35,
                      ),
                    ),
                    const Text(
                      'Authentication',
                      style: TextStyle(
                        color: Palette.firebaseOrange,
                        fontSize: 35,
                      ),
                    ),
                  ],
                ),

                // Form
                BlocListener<SignInCubit, SignInState>(
                  listener: (context, state) {
                    switch (state) {
                      case SignInInitial():
                        null;
                      case SignInLoading():
                        showDialog(
                          context: context,
                          builder: (context) => const Center(
                            child: CircularProgressIndicator(),
                          ),
                        );
                      case SignInSuccess():
                        Navigator.of(context).pop();
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ));
                      case SignInFailure():
                        Handlers.handleErrorState(context, state.errorMessage);
                    }
                  },
                  child: SignInForm(),
                )
              ]),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: const BackButton(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
