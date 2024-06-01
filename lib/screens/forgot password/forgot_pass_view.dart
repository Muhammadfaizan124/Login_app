import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Forgot_password extends StatefulWidget {
  const Forgot_password({super.key});

  @override
  State<Forgot_password> createState() => _Forgot_passwordState();
}

class _Forgot_passwordState extends State<Forgot_password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

header() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Center(
        child: Text(
          'WELCOME',
          style: GoogleFonts.pacifico(
            color: Colors.black,
            fontSize: 45,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      const Icon(
        Icons.login_rounded,
        size: 50,
      ),
    ],
  );
}
