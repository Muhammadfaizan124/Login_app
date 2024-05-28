import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animated_splash/flutter_animated_splash.dart';
import 'package:login_app/screens/sign-in/sign_in_view.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({super.key});

  @override
  State<Splash_screen> createState() => Splash_screenState();
}

class Splash_screenState extends State<Splash_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplash(
        type: Transition.fade,
        curve: Curves.fastEaseInToSlowEaseOut,
        backgroundColor: Colors.black,
        navigator:  SignIn(),
        durationInSeconds: 4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign-in App',
              style: GoogleFonts.lobster(
                fontSize: 50,
                color: const Color.fromARGB(255, 206, 205, 205),
              ),
            ),
            Text(
              'With',
              style: GoogleFonts.lobster(
                fontSize: 50,
                color: const Color.fromARGB(255, 206, 205, 205),
              ),
            ),
            Text(
              'Local Storage',
              style: GoogleFonts.lobster(
                fontSize: 50,
                color: const Color.fromARGB(255, 206, 205, 205),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
