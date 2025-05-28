import 'package:flutter/material.dart';
import 'package:movie_night/presentaion/features/authentication/view/widgets/sign_in_form.dart';
import 'package:movie_night/utils/constants/colors.dart';
import 'package:movie_night/utils/constants/images.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  SignInScreenState createState() => SignInScreenState();
}

class SignInScreenState extends State<SignInScreen> {
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _emailFocusNode.unfocus();
        _passwordFocusNode.unfocus();
      },
      child: Scaffold(
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
                  FutureBuilder(
                    future: Future.delayed(Duration(seconds: 4)),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return const Text('Error initializing Firebase');
                      } else if (snapshot.connectionState ==
                          ConnectionState.done) {
                        return SignInForm(
                          emailFocusNode: _emailFocusNode,
                          passwordFocusNode: _passwordFocusNode,
                        );
                      }
                      return const CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Palette.firebaseOrange,
                        ),
                      );
                    },
                  ),
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
      ),
    );
  }
}
