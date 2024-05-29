import 'package:flutter/material.dart';
import 'package:login_app/screens/splash_screen.dart';

void main() {
  runApp(const Login_app());
}

class Login_app extends StatelessWidget {
  const Login_app({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash_screen(),
    );
  }
}
