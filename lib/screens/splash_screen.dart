//import 'dart:async';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/screens/home/home_view.dart';
import 'package:login_app/screens/sign-in/sign_in_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

String? finalemail;

// ignore: must_be_immutable
class Splash_screen extends StatefulWidget {
  Splash_screen({super.key});

  @override
  State<Splash_screen> createState() => Splash_screenState();
}

class Splash_screenState extends State<Splash_screen> {
  @override
  void initState() {
    super.initState();

    getValidationData().whenComplete(() async {
      Timer(const Duration(seconds: 4), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => finalemail == null ? Sign_In() : Home_view(),
          ),
        );
      });
    });
  }

  Future getValidationData() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    var obtainedemail = sharedPreferences.getString('email');
    setState(() {
      finalemail = obtainedemail;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Log In App',
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
        ));
  }
}
