import 'package:flutter/material.dart';
import 'package:movie_night/utils/constants/colors.dart';
import 'package:movie_night/utils/constants/images.dart';

class FacebookSignInButton extends StatefulWidget {
  const FacebookSignInButton({super.key});

  @override
  FacebookSignInButtonState createState() => FacebookSignInButtonState();
}

class FacebookSignInButtonState extends State<FacebookSignInButton> {
  bool _isSigningIn = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: _isSigningIn
          ? const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
          : GestureDetector(
              onTap: () {
                setState(() {
                  _isSigningIn = true;
                });

                // Simulate a sign-in process
                Future.delayed(const Duration(seconds: 1), () {
                  setState(() {
                    _isSigningIn = false;
                  });
                });
              },
              child: Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    color: Palette.lightGrey,
                    borderRadius: BorderRadius.circular(30)),
                child: Image(
                  image: AssetImage(Images.facebookLogo),
                  height: 32,
                ),
              ),
            ),
    );
  }
}
